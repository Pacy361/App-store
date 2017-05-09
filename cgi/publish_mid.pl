#!/usr/bin/perl
require public;
use strict;
use CGI;
unshift(@INC,"/usr/share/nginx/perl");
my $q = CGI->new;
my %data;
$data{name} = $q->param('filename');
if($data{name} eq ""){
	print $q->redirect("/cgi/turn.pl?warn=appname_none");
}
my $fullname=time();
$data{first} = $q->param('first');
$data{second} = $q->param('second');
$data{location} = $q->param('localfile');
open (OUTFILE, ">../apps/$fullname");
while(my $bytesread=read($data{location},my $buffer,100)){
	print OUTFILE $buffer;
}
my @size=stat("../apps/$fullname");
my $size=$size[7]."Byte";
my $url='http://app.createclouds.cn/cgi/down_mid.pl?name='.$fullname;
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @account=split(/=/,$rcvd_cookies);
my $session = CGI::Session->new($account[1]);
my $name = $session->param('name');
my $sql=<<END;
insert into apps(name,class1,class2,size,url,account,timestamp) values('$data{name}','$data{first}','$data{second}','$size','$url','$name','$fullname');
END
my $res=public->exec_sql($sql);
if($res){
	print $q->redirect("/cgi/turn.pl?warn=upload_success");
}else{
	print $q->redirect("/cgi/turn.pl?warn=error");
}
