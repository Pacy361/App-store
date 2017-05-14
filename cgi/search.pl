#!/usr/bin/env perl
print "Content-type:text/html;charset=GBK\n\n";
use strict;
use CGI::Session;
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
select name,size,download,url,account from apps where enable='T' and class1='$name';
END
if($name eq "全部"){
	$sql="select name,size,download,url,account from apps where enable='T' order by download desc limit 10;";
}
if($name eq "搜索"){
	$sql="select name,size,download,url,account from apps where enable='T' and name ~* '.*$data{search}.*';";
}
if($name eq "个人"){
	$sql="select name,size,download,url,account from apps where enable='T' and account='$account[1]' ;";
}
my @row=public->sel_sql($sql);
my $ret="";
$ret.=<<End; 
<table class="table">
	<thead>
                    <tr>
                        <th scope="col" >名称</th>
                        <th scope="col" >大小</th>
                        <th scope="col" >下载次数</th>
                        <th scope="col" >安装</th>
                        <th scope="col" >用户</th>
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
        my ($user)=shift(@row);
        $ret.="<td >$name</td>";
        $ret.="<td >$size</td>";
        $ret.="<td >$download</td>";
        $ret.="<td ><a href=$url><img src=http://app.createclouds.cn/img/icon.png /></a></td>";
        $ret.="<td >$user</td>";
	$ret.="</tr>";
}
$ret.="</tbody></table>";
my $str;
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @name=split(/=/,$rcvd_cookies);
my $session = CGI::Session->new($name[1]);
my $user_name = $session->param('name');
my $login_str=<<End;
<div class="menubar">
    <div class="menuitem">
        <div>登录</div>
        <div class="submenu">
            <div><a href=#>修改密码</a></div>
        </div>
    </div>
</div>
End
my $name_str=<<End;
<div class="menubar">
    <div class="menuitem">
        <div>$user_name</div>
        <div class="submenu">
            <div><a href=http://app.createclouds.cn/cgi/modify.pl?name=modify_password>修改密码</a></div>
            <div><a href=http://app.createclouds.cn/cgi/sign_out.pl>退出</a></div>
        </div>
    </div>
</div>
End
if(length($user_name) != 0){
	print <<End;
	$ret,$name_str,,,
End
}else{
	print <<End;
	$ret,<a href=cgi/sign_up.pl>注册</a>,$login_str,<a href=cgi/sign_in.pl>登录|</a>,
End
}
