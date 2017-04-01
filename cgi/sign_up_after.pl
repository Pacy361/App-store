#!/usr/bin/perl
print "Content-type:text/html";
require public;
use strict;
use CGI;
print <<EndOfHTML;
<html>
<head>
<title>Submit</title>
</head>
<body>
EndOfHTML
my $q = CGI->new;
my %data;
$data{name} = $q->param('name');
$data{mail} = $q->param('mail');
if($data{name} !~ /^[\s\w.-]+$/){
	print "Name must contain only alphanumerics, spaces, dots and dashes.";
	exit;
}
elsif(&is_exist($data{name})){
	print "User exists\n";
	exit;
}else{
	my $stmt = qq(
	INSERT INTO account 
	VALUES ('$data{name}','$data{mail}');
	);
	my $rv = public->exec_sql($stmt) or print "error\n";
	print $q->redirect("../index.pl");
}
sub is_exist{
	my ($name)=@_;
	my $sql=<<END;
	select * from account where name='$name';
END
	my $rv=public->sel_sql($sql);
}
print $q->header;
print "</body></html>";
