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
#�����û�
my $acc_sql=<<End;
select name,mail,active,role,lock from account;
End
my @row1=public->sel_sql($acc_sql);
my @user_row1 = @row1;
my $user_list; #�û��б�
while(@user_row1){
        my ($name)=shift(@user_row1);
        my ($mail)=shift(@user_row1);
        my ($active)=shift(@user_row1);
        my ($role)=shift(@user_row1);
        my ($lock)=shift(@user_row1);
        $user_list.="$name#";
}
my $ret1="";
$ret1.=<<End; 
<table class=table1>
	<thead>
                    <tr>
                        <th>����</th>
                        <th scope="col" abbr="Starter">����</th>
                        <th scope="col" abbr="Medium">״̬</th>
                        <th scope="col" abbr="Business">��ɫ</th>
                        <th scope="col" abbr="Business">�Ƿ����</th>
                    </tr>
        </thead>
        <tbody>
End
while(@row1){
	$ret1.="<tr>";
        my ($name)=shift(@row1);
        my ($mail)=shift(@row1);
        my ($active)=shift(@row1);
        my ($role)=shift(@row1);
        my ($lock)=shift(@row1);
        $ret1.="<td >$name</td>";
        $ret1.="<td >$mail</td>";
        $ret1.="<td >$active</td>";
        $ret1.="<td >$role</td>";
        $ret1.="<td >$lock</td>";
	$ret1.="</tr>";
}
$ret1.="</tbody></table>";
my $user_modify=<<End;
<form action="http://app.createclouds.cn/cgi/manage_mid.pl" method="get">
                                <select id="user_list" name="user_list">        
                                </select>
                                <select id="user_oper" name="user_oper">
                                        <option value="ɾ��">ɾ��</option>
                                        <option value="����" selected="selected">����</option>
                                        <option value="����">����</option>
                                        <option value="����">����</option>
                                </select>
                                <input type="submit" value="�ύ"/>
                                <input name=user_default id=user_default value=user_default type=hidden></input>
                        </form>
End
#�����û�����



#����Ӧ��
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @account=split(/=/,$rcvd_cookies);
my $sql=<<END;
select name,size,download,url from apps where enable='T' and class1='$name';
END
if($name eq "����"){
	$sql="select name,size,download,url,enable from apps where enable='T' and account='$account[1]';";
}
if($name eq "����" && $account[1] eq "Admin"){
	$sql="select name,size,download,url,enable from apps;";
}
my @row=public->sel_sql($sql);
my @app_row = @row;
my $ret="";
$ret.=<<End; 
<table class=table1>
	<thead>
                    <tr>
                        <th>����</th>
                        <th scope="col" abbr="Starter">��С</th>
                        <th scope="col" abbr="Medium">���ش���</th>
                        <th scope="col" abbr="Business">����</th>
                        <th scope="col" abbr="Business">״̬</th>
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
        my ($enable)=shift(@row);
        $ret.="<td >$name</td>";
        $ret.="<td >$size</td>";
        $ret.="<td >$download</td>";
        $ret.="<td ><a href=$url><img src=http://app.createclouds.cn/img/icon.png /></a></td>";
        $ret.="<td >$enable</td>";
	$ret.="</tr>";
}
$ret.="</tbody></table>";
my $ret_list;
while(@app_row){
        my ($name)=shift(@app_row);
        my ($size)=shift(@app_row);
        my ($download)=shift(@app_row);
        my ($url)=shift(@app_row);
        my ($enable)=shift(@app_row);
        $ret_list.="$name#";
}
#����Ӧ�ý���

my $str;
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @name=split(/=/,$rcvd_cookies);
if($name[1] eq 'Admin'){
	print <<End;
		Ӧ�ù���,$ret<hr>,$ret_list,<hr>�û�����,<hr>$ret1,$user_list,$user_modify
End
}else{
	print <<End;
		Ӧ�ù���,$ret<hr>,$ret_list,,,,
End
}
