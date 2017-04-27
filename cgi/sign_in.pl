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
êÇ³Æ:<input name="name"><a href=http://app.createclouds.cn/cgi/modify.pl?name=modify_name >Íü¼ÇêÇ³Æ</a><br>
ÃÜÂë:<input name="password"><a href=http://app.createclouds.cn/cgi/modify.pl?name=modify_password >Íü¼ÇÃÜÂë</a><br>
<input type="submit" value="Ìá½»">
</form>
</div>
END
print "<body></html>";
