#!/usr/bin/perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
		<title>app-market</title>
	<script type="text/javascript" src="script/msg.js" ></script>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" type="text/javascript" charset="utf-8" ></script>
        <script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript" charset="utf-8" ></script>
	</head>
	<body>
			<span align=left>
				<a href=http://app.createclouds.cn>Ê×Ò³</a>
			</span>
			<div align="center">
    				<label for="exampleInputEmail1">ÁôÑÔ°å</label><br>
   				 <textarea id="txt" name="txt" style="width:300px;height:120px"></textarea><br>
				 <input  type="submit" onclick="sub()" value="Ìá½»" >
		 		<div align=center id=msg></div>
			</div>


	</body>
</html>
EndOfHTML
