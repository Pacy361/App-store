#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
		<title>��׿�г�</title>
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
					��׿������ƽ̨
					<a href="index.pl">��ҳ</a>
					<a href="index.pl">����</a>
					<a href="index.pl">�</a>
					<a href="index.pl">����</a>
			</span>
					<span id=entry1 style=float:right>&darr;</span>
					<span id=entry2 style=float:right></span>
		</div>
		<br>
		<div align="center"><h2>��ӭ������׿Ӧ���г�</h2></div>
		<br>
		<div align="center">
			<span>
			<input id="txt"/>
        	        <input type="button" value="����" onclick="sub()">
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
			�������
			<a href="#" id="btn06">Ӱ������</a>&nbsp;&nbsp;&nbsp;
			<a href="#" id="btn07">����ʵ��</a>
			<a href="#" id="btn08">��ƹ���</a>
			<a href="#" id="btn09">�칫ѧϰ</a>
			<a href="#" id="btn10">��ѯ�Ķ�</a>
			<a href="#" id="btn11">���γ���</a>
			<a href="#" id="btn05">��������</a>
			<a href="#" id="btn04">�罻ͨѶ</a>
			<a href="#" id="btn03">�����ֽ</a>
                	<a href="#" id="btn02" >ϵͳ����</a>
		        <a href="#" id="btn01" >ȫ��</a>
			<div align=center id=ret>
			</div>
</body>
</html>
EndOfHTML
