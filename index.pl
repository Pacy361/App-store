#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
		<title>��׿�г�</title>
	</head>
	<body>
		<div align="center">
			<span style="float:left">
					��׿������ƽ̨
					<a href="index.pl">��ҳ</a>
					<a href="index.pl">����</a>
					<a href="index.pl">�</a>
					<a href="index.pl">����</a>
			</span>
			<span style="float:right">
					<a href="cgi/sign_up.pl">ע��</a>|
					<a href="cgi/sign_in.pl">��¼</a>
			</span>
		</div>
		<br>
		<div align="center"><h1>��ӭ������׿Ӧ���г�</h1></div>
		<hr>
		<div align="center">
			<div align="right">
				<a href="cgi/publish.pl">
				<h1 >
				����Ӧ��
				</h1 >
				</a>
				<a href="cgi/manage.pl">
				<h1 >
				��������
				</h1 >
				</a>
			</div>
		</div>
		<hr>
EndOfHTML
use strict;
my $lib="cgi";
unshift(@INC,$lib);
require public;
my $sql=<<END;
select name,size,download,url from apps;
END
my @row=public->sel_sql($sql);
print "<div align=center>";
for(my $i=0;$i<=$#row;$i++){
	print "<b>$row[$i]&nbsp;&nbsp;<b>";
	if(($i+1)%4==0){
		print "<a href=$row[$i]>download</a>";
        	print "<br>";
	}
}
print "</div>";
print	"</body></html>";
