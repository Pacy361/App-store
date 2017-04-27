#!/usr/bin/perl
require public;
use strict;
use CGI;
my $q=CGI->new();
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @cookies = split /;/, $rcvd_cookies;
foreach my $cookie ( @cookies ){
   my ($key, $val) = split(/=/, $cookie);
   $key =~ s/^\s+//;
   $val =~ s/^\s+//;
   $key =~ s/\s+$//;
   $val =~ s/\s+$//;
   if($key eq "session_id"){
   	my $session = CGI::Session->new($val);
   	my $name = $session->param('name','');
   	print $q->redirect("http://app.createclouds.cn/index.pl");
   }
}
