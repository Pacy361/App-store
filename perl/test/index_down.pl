#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
	<body>
                <hr>
		<div>
                        <span>
                        软件类型
                        全部
                        系统工具
                        主题壁纸
                        社交通讯
                        拍摄美化
                        影音播放
                        生活实用
                        理财购物
                        办公学习
                        咨询阅读
                        旅游出行
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
        print "<b>名称 $name&nbsp;&nbsp;</b>";
        print "<b>大小 $size&nbsp;&nbsp;</b>";
        print "<b>下载次数 $download&nbsp;&nbsp;</b>";
        print "<a href=$url><img src=img/icon.png /></a><br>";
}
