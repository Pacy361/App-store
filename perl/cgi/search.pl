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
select name,size,download,url from apps where enable='T' and class1='$name';
END
if($name eq "ȫ��"){
	$sql="select name,size,download,url from apps where enable='T' limit 10;";
}
if($name eq "����"){
	$sql="select name,size,download,url from apps where enable='T' and name ~* '.*$data{search}.*';";
}
if($name eq "����"){
	$sql="select name,size,download,url from apps where enable='T' and account='$account[1]' ;";
}
my @row=public->sel_sql($sql);
my $ret="";
$ret.=<<End; 
<table class=table1>
	<thead>
                    <tr>
                        <th>����</th>
                        <th scope="col" abbr="Starter">��С</th>
                        <th scope="col" abbr="Medium">���ش���</th>
                        <th scope="col" abbr="Business">����</th>
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
my $session = CGI::Session->new($name[1]);
my $user_name = $session->param('name');
my $login_str=<<End;
<div class="menubar">
    <div class="menuitem">
        <div>��¼</div>
        <div class="submenu">
            <div><a href=#>�޸�����</a></div>
        </div>
    </div>
</div>
End
my $name_str=<<End;
<div class="menubar">
    <div class="menuitem">
        <div>$user_name</div>
        <div class="submenu">
            <div><a href=http://app.createclouds.cn/cgi/modify.pl?name=modify_password>�޸�����</a></div>
            <div><a href=http://app.createclouds.cn/cgi/sign_out.pl>�˳�</a></div>
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
	$ret,<a href=cgi/sign_up.pl>ע��</a>,$login_str,<a href=cgi/sign_in.pl>��¼|</a>,
End
}
