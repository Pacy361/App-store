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
			<a href=http://app.createclouds.cn>��ҳ</a>
		</div>
		<div align="center">
			<h1 id=app_h1>
			</h1>
			<hr>

			<div id=ret>
			</div>
			<div id=xxx >
			</div>

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
