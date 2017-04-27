#!/usr/bin/env perl
use strict;
use warnings;
use CGI::Session;
my $session = CGI::Session->new();
my $CGISESSID = $session->id();
$session->param('name', 'slxy');
print $session->header();
print $CGISESSID;
#$session->clear('name');
