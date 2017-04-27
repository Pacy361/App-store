#!/usr/bin/perl
print "Content-type:text/html;charset=GBK\n\n\n";
require public;
use strict;
use CGI;
use MIME::Lite;
my $q = CGI->new;
my %data;
$data{user} = $q->param('user');
$data{address} = $q->param('address');
my $sql=<<End;
select mail from account where name='$data{user}';
End
my @ret=public->sel_sql($sql);
if(!$ret[0]){
	print "用户不存在";
	exit;
}
if($ret[0] eq $data{address}){
#上次发送邮件的时间戳
	my $timestamp=<<End;
select timestamp from account where name='$data{user}';
End
	my @gap=public->sel_sql($timestamp);
#当前时间戳
	my $code = `date +%s`;
	my $gap = $code - $gap[0];
	if($gap < 300){
		print "请五分钟后再点击发送";
		exit;
	}
	my $ret = substr(reverse($code),1,4);
	chomp($code);
	&send_msg($data{address},$ret);	
	my $sql=<<End;
update account set code='$ret',timestamp='$code' where name='$data{user}';
End
	my $save_code = public->exec_sql($sql);
	if($save_code){
		print "邮件已经发送，请注意查收";
	}else{
		print "发送异常";
	}
}else{
	print "邮箱地址错误";	
	exit;
}
sub send_msg{
	#接收邮箱，这里我设置为我的 QQ 邮箱，你需要修改它为你自己的邮箱
	my ($to,$code) = @_;
	my $from = 'admin@createclouds.cn';
	my $cc = 'user1@createclouds.cn';
	my $subject = "密码找回";
	my $message = "您之所以会收到此邮件，是因为您正在进行密码找回，请输入下面的验证码:$code";
	my $msg = MIME::Lite->new(
	                 From     => $from,
	                 To       => $to,
	                 Cc       => $cc,
	                 Subject  => $subject,
	                 Data     => $message
	                      );
	$msg->send;
}
