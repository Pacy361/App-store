#!/usr/bin/env perl
print "Content-type:text/html\n\n";
$rcvd_cookies = $ENV{'HTTP_COOKIE'};
print "cookie is ".$rcvd_cookies."<br>";
@cookies = split /;/, $rcvd_cookies;
foreach $cookie ( @cookies ){
   ($key, $val) = split(/=/, $cookie);
   $key =~ s/^\s+//;
   $val =~ s/^\s+//;
   $key =~ s/\s+$//;
   $val =~ s/\s+$//;
   if( $key eq "UserId" ){
      $user_id = $val;
   }
}
print "UserID  = $user_id<br>";
