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
			<span>
				<form action="http://app.createclouds.cn/cgi/search.pl" method=GET>
					<input type=text name=app />
					<input type=submit value=���� />
				</span>
				</form>
			</span>
		</div>
		<div  align="center">
				<img src="/img/market.jpg">
				<span style=float:right>
				<a href="cgi/publish.pl">
				<h1>
				����Ӧ��
				</h1>
				</a>
				<br>
				<a href="cgi/manage.pl">
				<h1>
				��������
				</h1>
				</a>
				</span>
		</div>
		<hr>
		<div>
			<span>
			�������
			ȫ��
			ϵͳ����
                        �����ֽ
                        �罻ͨѶ
                        ��������
                        Ӱ������
                        ����ʵ��
                        ��ƹ���
                        �칫ѧϰ
                        ��ѯ�Ķ�
                        ���γ���
			</span>
		<hr>
		</div>
</body>
</html>
EndOfHTML
use strict;
my $lib="cgi";
unshift(@INC,$lib);
require public;
my $sql=<<END;
select name,size,download,url from apps where enable='T';
END
my @row=public->sel_sql($sql);
print "<div align=left>";
while(@row){
	my ($name)=shift(@row);
	my ($size)=shift(@row);
	my ($download)=shift(@row);
	my ($url)=shift(@row);
	print "<b>���� $name&nbsp;&nbsp;</b>";
	print "<b>��С $size&nbsp;&nbsp;</b>";
	print "<b>���ش��� $download&nbsp;&nbsp;</b>";
       	print "<a href=$url><img src=img/icon.png /></a><br>";
}
