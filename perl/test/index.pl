#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
		<title>°²×¿ÊÐ³¡</title>
	</head>
	<frameset rows="60%,40%" cols="*">
        	<frame src="index_up.pl" name="index_up.frame" frameborder="0" />
        	<frame src="index_down.pl" name="index_down.frame" frameborder="0" />
	</frameset>		
</html>
EndOfHTML
