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
�ǳ�:<input name="name"><br>
����:<input name="password"><br>
<input type="submit" value="�ύ">
</form>
</div>
END
print "<body></html>";