#!/usr/bin/env perl
print "Content-type:text/html;charset=GBK\n\n";
use strict;
use CGI::Session;
use CGI;
require public;
my $q = CGI->new;
my %data;
$data{type} = $q->param('type');
$data{msg} = $q->param('msg');
my $time = localtime();
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @cookies = split /;/, $rcvd_cookies;
my $name= "";
foreach my $cookie ( @cookies ){
   my ($key, $val) = split(/=/, $cookie);
   $key =~ s/^\s+//;
   $val =~ s/^\s+//;
   $key =~ s/\s+$//;
   $val =~ s/\s+$//;
   my $session = CGI::Session->new($val);
   $name = $session->param('name');
}
my $sql = "";
if($data{type} eq "query"){
	$sql="select account,time,msg from message order by id desc limit 10;";
}
if($data{type} eq "add"){
	if($name eq ""){
		print '<a href=http://app.createclouds.cn/cgi/sign_in.pl >请先登录点击返回</a>';
	        return;	
	}
	$sql="insert into message values('$name','$time','$data{msg}')";
	print '<a href=http://app.createclouds.cn/message.pl >发表成功点击返回</a>';
}
my @row=public->sel_sql($sql);

my $ret="";
while(@row){
        my ($name)=shift(@row);
        my ($time)=shift(@row);
        my ($msg)=shift(@row);
	$ret.= <<End;
<div><br><br><span class="label label-primary" style="width=100px;height=200px">$msg</span></div>
End
	$ret.="<div align=right>";
	$ret.= <<End;
<span class="label label-default" >$name</span>
End
	$ret.= <<End;
<span class="label label-default">$time</span>
End
	$ret.="</div>";
	$ret.="<hr>";
}
print <<End;
	$ret
End
