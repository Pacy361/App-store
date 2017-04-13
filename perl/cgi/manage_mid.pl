#!/usr/bin/perl
require public;
use strict;
use CGI;
unshift(@INC,"/usr/share/nginx/perl");
my $q = CGI->new;
my %data;
$data{app} = $q->param('app');
$data{app_oper} = $q->param('app_oper');
$data{app_default} = $q->param('app_default');
$data{user_list} = $q->param('user_list');
$data{user_oper} = $q->param('user_oper');
$data{user_default} = $q->param('user_default');
if(defined($data{app_default})){
	my $sql;
	if($data{app_oper} eq "½ûÓÃ"){
		$sql=<<END;
		update apps set enable='F' where name='$data{app}';
END
	}
	if($data{app_oper} eq "ÆôÓÃ"){
		$sql=<<END;
		update apps set enable='T' where name='$data{app}';
END
	}
	if($data{app_oper} eq "É¾³ı"){
		$sql=<<END;
		delete from apps where name='$data{app}';
END
	}
	my $res=public->exec_sql($sql);
	if($res){
		print $q->redirect("/cgi/turn.pl?warn=oper_success");
	}else{
		print $q->redirect("/cgi/turn.pl?warn=error");
	}
}
if(defined($data{user_default})){
	my $sql;
	if($data{user_oper} eq "É¾³ı"){
		$sql=<<END;
		delete from account where name='$data{user_list}';
END
	}
	if($data{user_oper} eq "½ûÓÃ"){
		$sql=<<END;
		update account set lock='T' where name='$data{user_list}';
END
	}
	if($data{user_oper} eq "ÆôÓÃ"){
		$sql=<<END;
		update account set lock='F' where name='$data{user_list}';
END
	}
	if($data{user_oper} eq "¼¤»î"){
		$sql=<<END;
		update account set active='T' where name='$data{user_list}';
END
	}
	my $res=public->exec_sql($sql);
	if($res){
		print $q->redirect("/cgi/turn.pl?warn=oper_success");
	}else{
		print $q->redirect("/cgi/turn.pl?warn=error");
	}
}

