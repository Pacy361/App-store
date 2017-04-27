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
<form action="down_mid.pl" method="POST">
Í«≥∆:<input name="name"><br>
<input type="submit" value="Ã·Ωª">
</form>
</div>
END
print "<body></html>";
