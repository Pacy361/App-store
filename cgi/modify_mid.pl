#!/usr/bin/perl
print "Content-type:text/html;charset=GBK\n\n\n";
require public;
use strict;
use CGI;
use MIME::Lite;
my $q = CGI->new;
my %data;
$data{user} = $q->param('user');
$data{code} = $q->param('code');
my $sql=<<End;
select code from account where name='$data{user}';
End
my @ret=public->sel_sql($sql);
if($data{code} eq ""){
	print "��������֤��";
	exit;
}elsif($ret[0] ne $data{code}){
	print "��֤�����";
	exit;
}else{
	print "��֤ͨ��"
};
