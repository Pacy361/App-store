#!/usr/bin/env perl
package public;
use strict;
use DBI;
use CGI;
sub cookie{
my $q = CGI->new;
my $rcvd_cookies = $ENV{'HTTP_COOKIE'};
my @cookies = split /;/, $rcvd_cookies;
my $user_id = "";
foreach my $cookie ( @cookies ){
   my ($key, $val) = split(/=/, $cookie);
   $key =~ s/^\s+//;
   $val =~ s/^\s+//;
   $key =~ s/\s+$//;
   $val =~ s/\s+$//;
   if( $key eq "UserId" ){
      $user_id = $val;
      return "";
   }
}
return $q->redirect("/cgi/turn.pl?warn=nologin");
}
sub connect{
	my $driver   ="Pg";
	my $database ="app";
	my $dsn ="DBI:$driver:dbname=$database;host=localhost;port=5432";
	my $userid = "app";
	my $password = "app";
	my $dbh = DBI->connect($dsn, $userid, $password,{RaiseError=>1}) or die $DBI::errstr;
	return $dbh;
}
sub exec_sql{
	shift(@_);
	my ($sql)=@_;
	my $dbh=public->connect();
	my $rv=$dbh->do($sql);
	return $rv;
	
}
sub sel_sql{
	shift(@_);
	my ($sql) = @_;
	my $dbh=public->connect();
	my $sth=$dbh->prepare($sql);
	my $rv=$sth->execute();
	if($rv<0){
        	print $DBI::errstr;
	}
	my (@row,@ret);
	while(@row=$sth->fetchrow_array()){
		push @ret,@row;
	}
	return @ret;
}
1;
