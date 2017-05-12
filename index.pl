#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
		<title>应用市场</title>
	<script type="text/javascript" src="script/ajax.js" ></script>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" type="text/javascript" charset="utf-8" ></script>
        <script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript" charset="utf-8" ></script>
	<style>
        *{
            margin:0;
            padding:0;
        }
        #content{
        background-color:#fff;
        width:1000px;
        padding:40px;
        margin:0 auto;
        border-left:30px solid #1D81B6;
        border-right:1px solid #ddd;
        -moz-box-shadow:0px 0px 16px #aaa;
        }
	</style>
	</head>
	<body>
		<div id="content">
		<div align="center">
			<span style="float:left">
					<ul class="nav nav-pills">
  					  <li role="presentation" ><a href="index.pl">安卓开发者平台</a></li>
  					  <li role="presentation" class="active"><a href="index.pl">首页</a></li>
  					  <li role="presentation"><a href="index.pl">服务</a></li>
  					  <li role="presentation"><a href="index.pl">活动</a></li>
  					  <li role="presentation"><a href="index.pl">帮助</a></li>
					</ul>
			</span>
					<span id=entry1 style=float:right>&darr;</span>
					<span id=entry2 style=float:right></span>
		</div>
		<br>
		<div align="center"><h2>欢迎来到安卓应用市场</h2></div>
		<br>
		<div align="center">
			<div class="form-group">
			  <input id="txt" />
			  <button type="submit" class="btn btn-default" onclick="sub()" >搜索</button>
			</div>
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
			<div class="btn-group" role="group" aria-label="...">	
		          <button type="button" class="btn btn-default" id="btn01" >全部</button>
		          <button type="button" class="btn btn-default" id="btn02" >系统工具</button>
		          <button type="button" class="btn btn-default" id="btn03" >主题壁纸</button>
		          <button type="button" class="btn btn-default" id="btn04" >社交通讯</button>
		          <button type="button" class="btn btn-default" id="btn05" >拍摄美化</button>
			  <button type="button" class="btn btn-default" id="btn06" >影音播放</button>
  			  <button type="button" class="btn btn-default" id="btn07" >生活实用</button>
  			  <button type="button" class="btn btn-default" id="btn08" >理财购物</button>
		          <button type="button" class="btn btn-default" id="btn09" >办公学习</button>
		          <button type="button" class="btn btn-default" id="btn10" >咨询阅读</button>
		          <button type="button" class="btn btn-default" id="btn11" >旅游出行</button>
			</div>
			<div align=center id=ret>
			</div>
</body>
</html>
EndOfHTML
