#!/usr/bin/perl
use strict;
use CGI;
my $q = CGI->new;
my %data;
$data{name} = $q->param('name');
my $name=$data{name};
# HTTP Header
print "Content-Type:application/octet-stream; name=$name\r\n";
print "Content-Disposition: attachment; filename=$name\r\n\n";
# Actual File Content will go hear.
open( FILE, "<../apps/$name" );
while(read(FILE,my $buffer, 100) )
{
   print("$buffer");
}
