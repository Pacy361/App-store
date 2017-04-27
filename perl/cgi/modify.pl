#!/usr/bin/perl
print "Content-type:text/html\n\n\n";
print <<End;
<html>
<head>
	<title>
		忘记密码
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
注册时邮箱:<input type=text><br>
<input type="submit" value="找回">
</form>
</div>
End
}
if($data{name} eq "modify_password"){
print <<End;
<div align="center">
	<form action="http://app.createclouds.cn/cgi/modify_end.pl" method=post onsubmit="return submitTest()">
	用户名:<input type=text id=name name="name" onblur=onblur_name()><span id=name_error></span><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        注册时邮箱:<input type=text id=mail onblur=onblur_mail()><span id=mail_error></span>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	验证码:<input type=text id=check_number onblur=onblur_check_number()><a href=# id=code>点击发送</a><span id=check_number_error></span><br>
        新密码:<input type=text id=new_password name="new_password" onblur=onblur_new_password()><span id=new_password_error></span><br>
	确认新密码:<input type=text id=confirm_new_password onblur=onblur_confirm_new_password()><span id=confirm_new_password_error></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
	<input type=submit id=modify value=提交 >
	</form>
</div>
End
}
