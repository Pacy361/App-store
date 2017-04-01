#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
		<title>安卓市场</title>
	</head>
	<body>
		<div align="center">
			<span style="float:left">
					安卓开发者平台
					<a href="index.pl">首页</a>
					<a href="index.pl">服务</a>
					<a href="index.pl">活动</a>
					<a href="index.pl">帮助</a>
			</span>
			<span style="float:right">
					<a href="cgi/sign_up.pl">注册</a>|
					<a href="cgi/sign_in.pl">登录</a>
			</span>
		</div>
		<br>
		<div align="center"><h1>欢迎来到安卓应用市场</h1></div>
		<hr>
		<div align="center">
			<div align="right">
				<a href="cgi/publish.pl">
				<h1 >
				发布应用
				</h1 >
				</a>
				<a href="cgi/manage.pl">
				<h1 >
				管理中心
				</h1 >
				</a>
			</div>
		</div>
		<hr>
EndOfHTML
use strict;
my $lib="cgi";
unshift(@INC,$lib);
require public;
my $sql=<<END;
select name,size,download,url from apps;
END
my @row=public->sel_sql($sql);
print "<div align=center>";
for(my $i=0;$i<=$#row;$i++){
	print "<b>$row[$i]&nbsp;&nbsp;<b>";
	if(($i+1)%4==0){
		print "<a href=$row[$i]>download</a>";
        	print "<br>";
	}
}
print "</div>";
print	"</body></html>";
