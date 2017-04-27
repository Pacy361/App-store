#!/usr/bin/env perl
use strict;
use warnings;
use CGI::Session;
my $session = CGI::Session->new('488b7c52752abfeeb5367c12bed6264b');
#my $session_id = $session->id();
$session->param('name','');
print $session->header();
#print $CGISESSID;
#$session->clear('name');
