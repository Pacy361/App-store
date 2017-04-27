#!/usr/bin/perl
print "Content-type:text/html\n\n";
require public;
use strict;
use CGI;
use MIME::Lite;
my $q = CGI->new;
my %data;
$data{name} = $q->param('app');
$data{oper} = $q->param('app_oper');
print $data{name};
print $data{oper};
