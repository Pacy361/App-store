#!/usr/bin/perl
use CGI;
my $req = new CGI;
my $file = $req->param("localfile");
print "$file<br>";
open (OUTFILE, ">$file");
while (my $bytesread = read($file, my $buffer, 1024)) {
	print "running here";
	print OUTFILE $buffer;
}
close (OUTFILE);
print "Content-type: text/html\n";
print "Location:$donepage\n\n"; 
print "ok"

