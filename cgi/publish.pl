#!/usr/bin/env perl
require public;
print public->cookie();
print "Content-type:text/html\n\n";
print <<END;
<html>
	<head><title></title></head>
	<body>
<div align="center">
	<div align="left">
                        <a href=http://app.createclouds.cn>��ҳ</a>
        </div>
	<form action="publish_mid.pl" method="POST" ENCTYPE="multipart/form-data">
	����:<input name="filename"><br>
        һ������:
	<select onChange="change()" id="first" name="first">  
  	      <option selected="selected">�ر����</option>  
	      <option>��������</option>
	      <option>ʵ�ù���</option>
	      <option>���ܷ���</option>
	</select>  
	<br>
	��������:
	<select id="second" name="second">  
   	<option >���칤��</option>  
   	<option selected="selected">��ֵ</option>  
   	<option>�����</option>  
   	<option>���뷨</option>  
	</select>  
	<br>
	<input type="file" value="ѡ���ļ�" name="localfile">
	<br>
	<br>
	<input type="submit" value="�ύ">
	</form>
</div>
<script>
function change()  
{  
   var x = document.getElementById("first");  
   var y = document.getElementById("second");  
   y.options.length = 0;
   if(x.selectedIndex == 0)  
   {  
        y.options.add(new Option("���칤��"));  
        y.options.add(new Option("��ֵ")); 
        y.options.add(new Option("�����"));  
        y.options.add(new Option("���뷨"));  
   }  
  
   if(x.selectedIndex == 1)  
   {  
        y.options.add(new Option("��ֽ"));  
        y.options.add(new Option("����"));  
        y.options.add(new Option("��Ϸ"));  
        y.options.add(new Option("Ӱ��"));  
   }  
   if(x.selectedIndex == 2)  
   {  
        y.options.add(new Option("�칫"));  
        y.options.add(new Option("����"));  
        y.options.add(new Option("����"));  
        y.options.add(new Option("ͼƬ"));  
   }
   if(x.selectedIndex == 3){
	y.options.add(new Option("���")); 
	y.options.add(new Option("����")); 
	y.options.add(new Option("��ʳ")); 
	y.options.add(new Option("��ͼ")); 
   }
}  
</script>
	<body>
</html>
END
