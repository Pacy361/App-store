#!/usr/bin/env perl
require public;
print public->cookie();
print "Content-type:text/html\n\n";
print <<END;
<html>
	<head><title></title></head>
	<body>
<div align="center">
	个人资料
	<hr>
	我的应用
	<hr>
	<form action="manage_mid.pl" method="POST" ENCTYPE="multipart/form-data">
	<input type="submit" value="提交">
	</form>
</div>
	<body>
</html>
END
