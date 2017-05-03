#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
		<title>应用市场</title>
	<script type="text/javascript" src="script/ajax.js" >
	</script>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
	</head>

	<style type="text/css">
    		.menubar
    		    {line-height: 24px;}
    		.menuitem
    		    {background: #fff; border: 0px solid #c00; position: relative; float: left; margin-right: 1em;}
    		.menuitem .submenu
    		    {background: #ccc; border: 0px solid #00c; position: absolute; top: 25px; left: -1px; width: 5em;}
    		.menuitem .submenu
    		    {display: none;}
    		.menuitem:hover .submenu
    		    {display: block;}
	</style>

	<style>
        *{
            margin:0;
            padding:0;
        }
        body{
            font-family: Georgia, serif;
            font-size: 20px;
            font-weight: normal;
            letter-spacing: normal;
            background: #f0f0f0;
        }
	#content{
	background-color:#fff;
	width:950px;
	padding:40px;
	margin:0 auto;
	border-left:30px solid #1D81B6;
	border-right:1px solid #ddd;
	-moz-box-shadow:0px 0px 16px #aaa;
	}
	#content h1{
	 font-family:"Trebuchet MS",sans-serif;
	 color:#1D81B6;
	 font-weight:normal;
	 font-style:normal;
	 font-size:56px;
	 text-shadow:1px 1px 1px #aaa;
	}
	#content h2{
	font-family:"Trebuchet MS",sans-serif;
	font-size:34px;
	font-style:normal;
	background-color:#f0f0f0;
	margin:40px 0px 30px -40px;
	padding:0px 40px;
	clear:both;
	float:left;
	width:100%;
	color:#aaa;
	text-shadow:1px 1px 1px #fff;
	}
        #content a{
            color:#1D81B6;
            text-decoration:none;
            float:right;
            text-shadow:1px 1px 1px #888;
        }
       </style>
	<body>
		<div id="content">
		<div align="center">
			<span style="float:left">
					安卓开发者平台
					<a href="index.pl">首页</a>
					<a href="index.pl">服务</a>
					<a href="index.pl">活动</a>
					<a href="index.pl">帮助</a>
			</span>
					<span id=entry1 style=float:right>&darr;</span>
					<span id=entry2 style=float:right></span>
		</div>
		<br>
		<div align="center"><h2>欢迎来到安卓应用市场</h2></div>
		<br>
		<div align="center">
			<span>
			<input id="txt"/>
        	        <input type="button" value="搜索" onclick="sub()">
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
		<hr>
			软件类型
			<a href="#" id="btn06">影音播放</a>&nbsp;&nbsp;&nbsp;
			<a href="#" id="btn07">生活实用</a>
			<a href="#" id="btn08">理财购物</a>
			<a href="#" id="btn09">办公学习</a>
			<a href="#" id="btn10">咨询阅读</a>
			<a href="#" id="btn11">旅游出行</a>
			<a href="#" id="btn05">拍摄美化</a>
			<a href="#" id="btn04">社交通讯</a>
			<a href="#" id="btn03">主题壁纸</a>
                	<a href="#" id="btn02" >系统工具</a>
		        <a href="#" id="btn01" >全部</a>
			<div align=center id=ret>
			</div>
</body>
</html>
EndOfHTML
