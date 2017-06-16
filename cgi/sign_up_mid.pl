#!/usr/bin/perl
print   <<EndOfHTML;
	<html>
        <head>
        <title>Submit</title>
        </head>
        <body>
	</body>
	</html>
EndOfHTML
require public;
use strict;
use MIME::Lite;
use CGI;
my $q = CGI->new;
my %data;
$data{name} = $q->param('name');
$data{password} = $q->param('password');
$data{mail} = $q->param('mail');
if(my $len=length($data{name}) == 0){
	print $q->redirect("/cgi/turn.pl?warn=user_none");
}elsif($data{name} !~ /^[\s\w.-]+$/){
	print $q->redirect("/cgi/turn.pl?warn=user_error");
}elsif(&is_exist('name',$data{name})){
	print $q->redirect("/cgi/turn.pl?warn=user_exist");
}elsif(my $len=length($data{password}) == 0){
	print $q->redirect("/cgi/turn.pl?warn=password_none");
}elsif(my $len=length($data{password}) < 8){
	print $q->redirect("/cgi/turn.pl?warn=password_short");
}elsif(my $len=length($data{mail}) == 0){
	print $q->redirect("/cgi/turn.pl?warn=mail_none");
}elsif(&is_exist('mail',$data{mail})){
	print $q->redirect("/cgi/turn.pl?warn=mail_exist");
}
else{
	my $stmt = qq(
	INSERT INTO account(name,password,mail) 
	VALUES ('$data{name}','$data{password}','$data{mail}');
	);
	my $rv = public->exec_sql($stmt) or print "error\n";
	&send_msg($data{mail},$data{name});
	print $q->redirect("/cgi/turn.pl?warn=sendmail");
}
sub is_exist{
	my ($item,$value)=@_;
	my $sql=<<END;
	select * from account where $item='$value';
END
	my $rv=public->sel_sql($sql);
}
sub send_msg{
	#接收邮箱，这里我设置为我的 QQ 邮箱，你需要修改它为你自己的邮箱
	my ($to,$name) = @_;
	my $from = 'admin@apps.com';
	my $cc = "fpx050923@163.com";
	my $sub= "active";
        my $msg = "http://app.createclouds.cn/cgi/active.pl?account=$name";
	public->mail($to,$sub,$msg);
	#system("bash /root/send.sh $to $sub $msg");
	print "邮件发送成功\n";
}
print $q->header;
