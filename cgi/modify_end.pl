#!/usr/bin/perl
#print "Content-type:text/html;charset=GBK\n\n\n";
require public;
use strict;
use CGI;
use MIME::Lite;
my $q = CGI->new;
my %data;
$data{user} = $q->param('name');
$data{password} = $q->param('new_password');
my $sql=<<End;
update account set password='$data{password}' where name='$data{user}';
End
my $ret=public->exec_sql($sql);
if($ret){
	print $q->redirect("/cgi/turn.pl?warn=modify_success");
}else{
	print $q->redirect("/cgi/turn.pl?warn=modify_wrong");
}
print $q->header;
