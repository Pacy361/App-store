#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
	<title>app-market</title>
	<link rel="stylesheet" type="text/css" href="plugin/css/style.css">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script type="text/javascript" src="script/ajax.js" ></script>
    	<script type="text/javascript" src="script/jquery-1.6.1.min.js"></script>
        <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" type="text/javascript" charset="utf-8" ></script>
        <script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript" charset="utf-8" ></script>
	<style>
	.wrap {
  		padding: 10px 0 0 10px;
  		width: 900px;
  		overflow: hidden;
	}

	.wrap .item {
  	position: relative;
  	float: left;
  	margin-left: -10px;
  	margin-top: -10px;
  	width: 150px;
  	height: 150px;
  	line-height: 80px;
  	text-align: center;
  	border: 10px solid #ccc;
	}

	.wrap .item:hover {
	  z-index: 2;
	  border-color: #99cc00;
	}
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
  					  <li role="presentation" ><a href="index.pl">��׿������ƽ̨</a></li>
  					  <li role="presentation" class="active"><a href="index.pl">��ҳ</a></li>
  					  <li role="presentation"><a href="index.pl">����</a></li>
  					  <li role="presentation"><a href="index.pl">�</a></li>
  					  <li role="presentation"><a href="message.pl">����</a></li>
  					  <li role="presentation"><a href="music.pl">����</a></li>
  					  <li role="presentation"><a href="index.pl">����</a></li>
					</ul>
			</span>
					<span id=entry1 style=float:right>&darr;</span>
					<span id=entry2 style=float:right></span>
		</div>
		<br>
		<div align="center"><h2>��ӭ������׿Ӧ���г�</h2></div>
		<br>
		<div align="center">
			<div class="form-group">
			  <input id="txt" />
			  <button type="submit" class="btn btn-default" onclick="sub()" >����</button>
			</div>
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
				<div id="music">
				</div>
		</div>
		<hr>
			<div class="btn-group" role="group" aria-label="...">	
		          <button type="button" class="btn btn-default" id="btn01" >ȫ��</button>
		          <button type="button" class="btn btn-default" id="btn02" >�ر����</button>
		          <button type="button" class="btn btn-default" id="btn03" >��������</button>
		          <button type="button" class="btn btn-default" id="btn04" >ʵ�ù���</button>
		          <button type="button" class="btn btn-default" id="btn05" >���ܷ���</button>
			</div>
			<div class="btn-group">
  			<button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   			 ���з�ʽ<span class="caret"></span>
  			</button>
  			<ul class="dropdown-menu">
				<li><a href="#">�б�</a></li>
    				<li><a href="#">����</a></li>
  			</ul>
			</div>
			<div align=center class=wrap id=ret>
			</div>
</body>
</html>
EndOfHTML
