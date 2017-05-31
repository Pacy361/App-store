#!/usr/bin/env perl
print "Content-type:text/html;charset=GBK\n\n";
use strict;
use CGI::Session;
use CGI;
require public;
my $q = CGI->new;
my %data;
$data{type} = $q->param('type');
$data{msg} = $q->param('msg');
my $time = localtime();
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @cookies = split /;/, $rcvd_cookies;
my $account= "";
foreach my $cookie ( @cookies ){
   my ($key, $val) = split(/=/, $cookie);
   $key =~ s/^\s+//;
   $val =~ s/^\s+//;
   $key =~ s/\s+$//;
   $val =~ s/\s+$//;
   my $session = CGI::Session->new($val);
   $account= $session->param('name');
}
   print $account."get";
