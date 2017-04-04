#!/usr/bin/perl
require public;
use strict;
use CGI;
my $q = CGI->new;
my %data;
$data{name} = $q->param('name');
$data{password} = $q->param('password');
if(my $len=length($data{name}) == 0){
        print $q->redirect("/cgi/turn.pl?warn=user_none");
}elsif(!&check_user($data{name})){
        print $q->redirect("/cgi/turn.pl?warn=user_not_exist");
}elsif(my $len=length($data{password}) == 0){
        print $q->redirect("/cgi/turn.pl?warn=password_none");
}elsif(!&check_password($data{name},$data{password})){
        print $q->redirect("/cgi/turn.pl?warn=password_wrong");
}elsif(!&check_status($data{name})){
        print $q->redirect("/cgi/turn.pl?warn=user_not_alive");
}else{
	print "Set-Cookie:Path=/;\n";
	print "Set-Cookie:UserId=$data{name};\n";
}
sub check_user{
	my ($name) = @_;
	my $sql=<<END;
select name from account where name='$name';
END
	 my @ret = public->sel_sql($sql);
	 if($ret[0] ne ""){
		return 1;
	 }else{
		return 0;
	 }
}
sub check_password{
	my ($name,$password) = @_;
	my $sql=<<END;
select password from account where name='$name';
END
	my @ret = public->sel_sql($sql);
	print $ret[0];
	if($ret[0] eq $password){
		return 1;
	}else{
		return 0;
	}
}
sub check_status{
	my ($name) = @_;
	my $sql=<<END;
select active from account where name='$name';
END
	my @ret = public->sel_sql($sql);
	 if($ret[0] eq "T"){
		return 1;
	 }else{
		return 0;
	 }
}
print $q->redirect("/cgi/publish.pl");