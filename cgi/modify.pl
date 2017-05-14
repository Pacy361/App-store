#!/usr/bin/perl
print "Content-type:text/html\n\n\n";
print <<End;
<html>
<head>
	<title>	忘记密码</title>
	<script type=text/javascript src=http://app.createclouds.cn/script/modify.js ></script>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" type="text/javascript" charset="utf-8" ></script>
	<script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript" charset="utf-8" ></script>	
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
<center>
<form action="http://app.createclouds.cn/cgi/modify_end.pl" method=post onsubmit="return submitTest()">
  <div class="alert alert-danger" id=error name=error role="alert" style="width:250px;height:30px">...</div>

  <div class="form-group">
    <label for="exampleInputEmail1">用户名</label>
    <input  class="form-control" id="name" name="name" onblur=onblur_name()  style="width:250px;height:30px">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">注册时邮箱</label>
    <input class="form-control" id=mail name="mail" onblur=onblur_mail() style="width:250px;height:30px">
  </div>

  <div class="form-group">
    <label for="exampleInputPassword1">验证码</label><a href=# id=code>点击发送</a>
    <input class="form-control" id=check_number name="check_number" onblur=onblur_check_number() style="width:250px;height:30px">
  </div>

  <div class="form-group">
    <label for="exampleInputFile">新密码</label>
    <input type="password" class="form-control" id=new_password name="new_password" onblur=onblur_new_password() style="width:250px;height:30px">
  </div>

  <div class="form-group">
    <label for="exampleInputFile">确认新密码</label>
    <input type="password" class="form-control" id=confirm_new_password name="confirm_new_password" onblur=onblur_confirm_new_password() style="width:250px;height:30px">
  </div>

  <button type="submit" class="btn btn-default" id="modify" value="提交">提交</button>
</form>
</center>
End
}
