#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
	<body>
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
                </div>
                <hr>
	</body>
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
