#!/usr/bin/env perl
require public;
print public->cookie();
print "Content-type:text/html\n\n";
print <<END;
<html>
	<head><title></title></head>
	<body>
<div align="center">
	��������
	<hr>
	�ҵ�Ӧ��
	<hr>
	<form action="manage_mid.pl" method="POST" ENCTYPE="multipart/form-data">
	<input type="submit" value="�ύ">
	</form>
</div>
	<body>
</html>
END
