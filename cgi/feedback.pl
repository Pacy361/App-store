#!/usr/bin/perl
print "Content-type:text/html\n\n";
require public;
use strict;
use CGI;
use MIME::Lite;
my $q = CGI->new;
my %data;
print "<a href=http://app.createclouds.cn>homepage</a>";
