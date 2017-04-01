#!/usr/bin/env perl
package public;
use DBI;
sub connect{
	my $driver   ="Pg";
	my $database ="app";
	my $dsn ="DBI:$driver:dbname=$database;host=pg.createclouds.cn;port=5432";
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
	my @row,@ret;
	while(@row=$sth->fetchrow_array()){
		push @ret,@row;
	}
	return @ret;
}
1;
