#!/usr/bin/env perl
print "Content-type:text/html\n\n";
print <<EndOfHTML;
<html>
	<head><title></title></head>
	<body>
EndOfHTML
use strict;
require public;
print <<END;
<div align="center">
	<form action="sign_up_after.pl" method="POST">
	����:<input name="name"><br>
        һ������:
	<select id="first" onChange="change()">  
  	 <option selected="selected">ϵͳ����</option>  
   	<option>�����ֽ</option>  
	</select>  
	��������:
	<select id="second">  
   	<option selected="selected">��ȫ</option>  
   	<option >����</option>  
   	<option>�����</option>  
   	<option>���뷨</option>  
	</select>  
	<input type="submit" value="�ύ">
	</form>
</div>
<script>
function change()  
{  
   var x = document.getElementById("first");  
   var y = document.getElementById("second");  
   y.options.length = 0; // ���second���������������  
   if(x.selectedIndex == 0)  
   {  
        y.options.add(new Option("��ȫ", "0"));  
        y.options.add(new Option("����", "1", false, true));  // Ĭ��ѡ��ʡ�����  
        y.options.add(new Option("�����", "2"));  
        y.options.add(new Option("���뷨", "3"));  
   }  
  
   if(x.selectedIndex == 1)  
   {  
        y.options.add(new Option("��̬��ֽ", "0"));  
        y.options.add(new Option("��������", "1", false, true));  // Ĭ��ѡ��ʡ�����  
        y.options.add(new Option("����", "2"));  
   }  
  
}  
</script>
END
print "<body></html>";
