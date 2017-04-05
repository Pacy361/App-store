#!/usr/bin/perl
require public;
use strict;
use CGI;
my $q = CGI->new;
my %data;
$data{name} = $q->param('filename');
my $fullname="http://app.createclouds.cn/cgi/down_mid.pl?name=".time().".apk";
$data{first} = $q->param('first');
$data{second} = $q->param('second');
$data{location} = $q->param('localfile');
open (OUTFILE, ">../apps/$fullname");
while(my $bytesread=read($data{location},my $buffer,100)){
	print OUTFILE $buffer;
}
my @size=stat("../apps/$fullname");
my $size=$size[7]."Byte";
my $url="/apps/$fullname";
my $sql=<<END;
insert into apps(name,class1,class2,size,url) values('$data{name}','$data{first}','$data{second}','$size','$url');
END
my $res=public->exec_sql($sql);
if($res){
	print $q->redirect("/cgi/turn.pl?warn=upload_success");
}else{
	print $q->redirect("/cgi/turn.pl?warn=error");
}
