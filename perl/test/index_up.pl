#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
	<body>
                <div align="center">
                        <span style="float:left">
                                        安卓开发者平台
                                        <a href="index.pl">首页</a>
                                        <a href="index.pl">服务</a>
                                        <a href="index.pl">活动</a>
                                        <a href="index.pl">帮助</a>
                        </span>
                        <span style="float:right">
                                        <a href="cgi/sign_up.pl">注册</a>|
                                        <a href="cgi/sign_in.pl">登录</a>
                        </span>
                </div>
                <br>
                <div align="center"><h1>欢迎来到安卓应用市场</h1></div>
                <hr>
                <div align="center">
                        <span>
                                <form action="http://app.createclouds.cn/cgi/search.pl" method=GET>
                                        <input type=text name=app />
                                        <input type=submit value=搜索 />
                                </span>
                                </form>
                        </span>
                </div>
                <div  align="center">
                                <img src="/img/market.jpg">
                                <span style=float:right>
                                <a href="cgi/publish.pl">
                                <h1>
                                发布应用
                                </h1>
                                </a>
                                <br>
                                <a href="cgi/manage.pl">
		<h1>
                                管理中心
                                </h1>
                                </a>
                                </span>
                </div>
</body>
EndOfHTML
