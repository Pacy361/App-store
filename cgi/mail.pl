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
	print "�û�������";
	exit;
}
if($ret[0] eq $data{address}){
#�ϴη����ʼ���ʱ���
	my $timestamp=<<End;
select timestamp from account where name='$data{user}';
End
	my @gap=public->sel_sql($timestamp);
#��ǰʱ���
	my $code = `date +%s`;
	my $gap = $code - $gap[0];
	if($gap < 300){
		print "������Ӻ��ٵ������";
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
		print "�ʼ��Ѿ����ͣ���ע�����";
	}else{
		print "�����쳣";
	}
}else{
	print "�����ַ����";	
	exit;
}
sub send_msg{
	my ($to,$code) = @_;
	#my $subject = "�����һ�";
	#my $message = "��֮���Ի��յ����ʼ�������Ϊ�����ڽ��������һأ��������������֤��:$code";
	my $sub = "password";
	my $msg = "$code";
	public->mail($to,$sub,$msg);
}
