#!/usr/bin/env perl
my ($buffer, @pairs, $pair, $name, $value, %FORM,$msg);
$buffer = $ENV{'QUERY_STRING'};
# 读取 name/value 对信息
@pairs = split(/&/, $buffer);
foreach $pair (@pairs){
       ($name, $value) = split(/=/, $pair);
       $FORM{$name} = $value;
	if($value =~ "user_none" ){
		$msg="用户名不能为空";
	}elsif($value =~ "user_error"){
		$msg="用户名只能是字母、数字、下划线、连字符、空白";
	}elsif($value =~ "user_exist"){
		$msg="用户已经存在";
	}elsif($value =~ "password_none"){
		$msg="密码不能为空";
	}elsif($value =~ "password_short"){
		$msg="密码不能少于八位";
	}elsif($value =~ "mail_none"){
		$msg="邮箱不能为空";
	}elsif($value =~ "mail_exist"){
		$msg="邮箱已经存在";
	}elsif($value =~ "nologin"){
		$msg="请先登录,将在<span id=mes>5</span>秒钟后返回首页!";
	}elsif($value =~ "user_not_exist"){
		$msg="用户不存在";
	}elsif($value =~ "user_not_alive"){
		$msg="用户未激活，请登录注册时邮箱激活";
	}elsif($value =~ "password_wrong"){
		$msg="密码不正确";
	}else{
		$msg='系统给您的邮箱发送了一封激活邮件，请点击链接进行激活<br><div align=center>将在 <span id=mes>5</span> 秒钟后返回首页！</div>';
	}
}
print <<END;
Content-type:text/html\n\n
<html>
<script language="javascript" type="text/javascript"> 
var i = 5; 
var intervalid; 
intervalid = setInterval("fun()", 1000); 
function fun() { 
if (i == 0) { 
window.location.href = "http://app.createclouds.cn/"; 
clearInterval(intervalid); 
} 
document.getElementById("mes").innerHTML = i; 
i--; 
} 
</script>
<head>
	<title>提示页</title>
</head>
<body>
	<div align="center">
		<h2>$msg</h2>
		<br>
	</div>
</body>
</html>
END
