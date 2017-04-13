#!/usr/bin/env perl
print "Content-type:text/html;charset=GBK\n\n";
use strict;
use CGI;
require public;
my $q = CGI->new;
my %data;
$data{name} = $q->param('name');
$data{search} = $q->param('search');
my $name=$data{name};
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @account=split(/=/,$rcvd_cookies);
my $sql=<<END;
select name,size,download,url from apps where enable='T' and class1='$name';
END
if($name eq "全部"){
	$sql="select name,size,download,url from apps where enable='T';";
}
if($name eq "搜索"){
	$sql="select name,size,download,url from apps where enable='T' and name ~* '.*$data{search}.*';";
}
if($name eq "个人"){
	$sql="select name,size,download,url from apps where enable='T' and account='$account[1]';";
}
my @row=public->sel_sql($sql);
my $ret="";
$ret.=<<End; 
<table class=table1>
	<thead>
                    <tr>
                        <th>名称</th>
                        <th scope="col" abbr="Starter">大小</th>
                        <th scope="col" abbr="Medium">下载次数</th>
                        <th scope="col" abbr="Business">链接</th>
                    </tr>
        </thead>
        <tbody>
End
while(@row){
	$ret.="<tr>";
        my ($name)=shift(@row);
        my ($size)=shift(@row);
        my ($download)=shift(@row);
        my ($url)=shift(@row);
        $ret.="<td >$name</td>";
        $ret.="<td >$size</td>";
        $ret.="<td >$download</td>";
        $ret.="<td ><a href=$url><img src=http://app.createclouds.cn/img/icon.png /></a></td>";
	$ret.="</tr>";
}
$ret.="</tbody></table>";
my $str;
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @name=split(/=/,$rcvd_cookies);
if(defined($rcvd_cookies)){
	print <<End;
	$ret,$name[1]|,cgi/profile.pl,退出,cgi/sign_out.pl
End
}else{
	print <<End;
	$ret,注册|,cgi/sign_up.pl,登录,cgi/sign_in.pl
End
}
