#!/usr/bin/env perl
require public;
print public->cookie();
print "Content-type:text/html\n\n";
print <<END;
<html>
	<head>
		<title>
			应用管理
		</title>
	<script type="text/javascript" src="http://app.createclouds.cn/script/app_ajax.js" >
        </script>
	</head>
	<body>
		<div align="left">
			<a href=http://app.createclouds.cn>首页</a>
		</div>
		<div align="center">
			<h1 id=app_h1>
			</h1>
			<hr>

			<div id=ret>
			</div>
			<form action="http://app.createclouds.cn/cgi/manage_mid.pl" method="get">
				<select id="app" name="app">	
				</select>
				<select id="app_oper" name="app_oper">
					<option value="删除">删除</option>
					<option value="禁用" selected="selected">禁用</option>
					<option value="启用">启用</option>
				</select>
				<input type="submit" value="提交"/>
				<input name=app_default id=app_default value=app_default type=hidden></input>
			</form>

			<h1 id=acc_h1>
			<h1>

			<div id=user>
			</div>
			<div id=user_modify>
				yyy
			</div>
		</div>
	<body>
</html>
END
