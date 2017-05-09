#!/usr/bin/perl
require public;
use strict;
use CGI;
my $q = CGI->new;
my %data;
$data{name} = $q->param('name');
my $name=$data{name};
my $sql=<<END;
update apps set download = download + 1 where timestamp = '1494323645';
END
my $ret=public->exec_sql($sql);
print "Content-Type:application/octet-stream; name=$name\r\n";
print "Content-Disposition: attachment; filename=$name\r\n\n";
# Actual File Content will go hear.
open( FILE, "<../apps/$name" );
while(read(FILE,my $buffer, 100) )
{
   print("$buffer");
}
