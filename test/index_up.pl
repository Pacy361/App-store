#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
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
</body>
EndOfHTML
