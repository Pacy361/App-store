#!/usr/bin/env perl
require public;
print public->cookie();
print "Content-type:text/html\n\n";
print <<END;
<html>
	<head>
		<title>
			Ӧ�ù���
		</title>
	<script type="text/javascript" src="http://app.createclouds.cn/script/app_ajax.js" >
        </script>
	</head>
	<body>
		<div align="left">
			<a href=http://app.createclouds.cn/index.pl>��ҳ</a>
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
					<option value="ɾ��">ɾ��</option>
					<option value="����" selected="selected">����</option>
					<option value="����">����</option>
				</select>
				<input type="submit" value="�ύ"/>
				<input name=app_default id=app_default value=app_default type=hidden></input>
			</form>

			<h1 id=acc_h1>
			<h1>

			<div id=user>
			</div>
			<div id=user_modify>
			</div>
			<hr>
			<div id=money align=center>	
				����״��
			</div>
			<hr>
			<div id=platform align=center>	
				ƽ̨����
			</div>
		</div>
	<body>
</html>
END
