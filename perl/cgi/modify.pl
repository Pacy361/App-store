#!/usr/bin/perl
print "Content-type:text/html\n\n\n";
print <<End;
<html>
<head>
	<title>
		��������
	</title>
	<script type=text/javascript src=http://app.createclouds.cn/script/modify.js >
	</script>
</head>
<body>
<div id=ret>
</div>
</body>
</html>
End
require public;
use strict;
use CGI;
use MIME::Lite;
my $q = CGI->new;
my %data;
$data{name} = $q->param('name');
if($data{name} eq "modify_name"){
print <<End;
<div align="center">
<form action="#" method="POST">
ע��ʱ����:<input type=text><br>
<input type="submit" value="�һ�">
</form>
</div>
End
}
if($data{name} eq "modify_password"){
print <<End;
<div align="center">
	<form action="http://app.createclouds.cn/cgi/modify_end.pl" method=post onsubmit="return submitTest()">
	�û���:<input type=text id=name name="name" onblur=onblur_name()><span id=name_error></span><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        ע��ʱ����:<input type=text id=mail onblur=onblur_mail()><span id=mail_error></span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	��֤��:<input type=text id=check_number onblur=onblur_check_number()><a href=# id=code>�������</a><span id=check_number_error></span><br>
        ������:<input type=text id=new_password name="new_password" onblur=onblur_new_password()><span id=new_password_error></span><br>
	ȷ��������:<input type=text id=confirm_new_password onblur=onblur_confirm_new_password()><span id=confirm_new_password_error></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
	<input type=submit id=modify value=�ύ >
	</form>
</div>
End
}
