#!/usr/bin/env perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head>
	<title></title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" type="text/javascript" charset="utf-8" ></script>
        <script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript" charset="utf-8" ></script>  
	</head>
	<body>
EndOfHTML
use strict;
require public;
print <<END;
<div align="center">
<form action="sign_up_mid.pl" method="POST">
<div class="form-group">
    <label for="exampleInputEmail1">�û���</label>
    <input  class="form-control" id="name" name="name" style="width:250px;height:30px">
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">����</label>
    <input type="password" class="form-control" id="password" name="password" style="width:250px;height:30px" placeholder="����8λ��������ĸ�����֣��»���">
    <div class="progress" style="width:250px" >
      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"  ></div>
    </div>
  </div>

  <div class="form-group">
    <label for="exampleInputEmail1">����</label>
    <input class="form-control" id="mail" name="mail" style="width:250px;height:30px">
  </div>
<input type="submit" value="�ύ">
</form>
</div>
END
print "<body></html>";
