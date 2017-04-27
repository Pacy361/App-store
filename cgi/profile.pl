#!/usr/bin/perl
require public;
use strict;
use CGI;
my $q=CGI->new();
print $q->redirect("http://app.createclouds.cn/index.pl");
