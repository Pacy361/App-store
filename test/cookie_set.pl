#!/usr/bin/perl
require public;
use strict;
use CGI;
my $q = CGI->new;
my %data;
$data{code} = $q->param('code');
	print "Set-Cookie:Path=/;\n";
	print "Set-Cookie:Code=$data{code};\n";
print $q->header;
