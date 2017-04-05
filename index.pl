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
			<span>
				<form action="http://app.createclouds.cn/cgi/search.pl" method=GET>
					<input type=text name=app />
					<input type=submit value=搜索 />
				</span>
				</form>
			</span>
		</div>
		<div  align="center">
				<img src="/img/market.jpg">
				<span style=float:right>
				<a href="cgi/publish.pl">
				<h1>
				发布应用
				</h1>
				</a>
				<br>
				<a href="cgi/manage.pl">
				<h1>
				管理中心
				</h1>
				</a>
				</span>
		</div>
		<hr>
		<div>
			<span>
			软件类型
			全部
			系统工具
                        主题壁纸
                        社交通讯
                        拍摄美化
                        影音播放
                        生活实用
                        理财购物
                        办公学习
                        咨询阅读
                        旅游出行
			</span>
		<hr>
		</div>
</body>
</html>
EndOfHTML
use strict;
my $lib="cgi";
unshift(@INC,$lib);
require public;
my $sql=<<END;
select name,size,download,url from apps where enable='T';
END
my @row=public->sel_sql($sql);
print "<div align=left>";
while(@row){
	my ($name)=shift(@row);
	my ($size)=shift(@row);
	my ($download)=shift(@row);
	my ($url)=shift(@row);
	print "<b>名称 $name&nbsp;&nbsp;</b>";
	print "<b>大小 $size&nbsp;&nbsp;</b>";
	print "<b>下载次数 $download&nbsp;&nbsp;</b>";
       	print "<a href=$url><img src=img/icon.png /></a><br>";
}
