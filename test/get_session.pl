#!/usr/bin/env perl
print "Content-type:text/html\n\n";
use strict;
use warnings;
use CGI::Session;
my $session = CGI::Session->new('488b7c52752abfeeb5367c12bed6264b');
print $session->param('name');
