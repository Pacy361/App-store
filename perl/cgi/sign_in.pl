#!/usr/bin/env perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head><title></title></head>
	<body>
EndOfHTML
use strict;
require public;
print <<END;
<div align="center">
<form action="sign_in_mid.pl" method="POST">
�ǳ�:<input name="name"><a href=http://app.createclouds.cn/cgi/modify.pl?name=modify_name >�����ǳ�</a><br>
����:<input name="password"><a href=http://app.createclouds.cn/cgi/modify.pl?name=modify_password >��������</a><br>
<input type="submit" value="�ύ">
</form>
</div>
END
print "<body></html>";
