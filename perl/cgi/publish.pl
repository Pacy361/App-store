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
                        <a href=http://app.createclouds.cn/index.pl>��ҳ</a>
        </div>
	<form action="publish_mid.pl" method="POST" ENCTYPE="multipart/form-data">
	����:<input name="filename"><br>
        һ������:
	<select onChange="change()" id="first" name="first">  
  	      <option selected="selected">ϵͳ����</option>  
  	      <option>�����ֽ</option>  
  	      <option>�罻ͨѶ</option>
  	      <option>��������</option>
  	      <option>Ӱ������</option>
  	      <option>����ʵ��</option>
  	      <option>��ƹ���</option>
  	      <option>�칫ѧϰ</option>
  	      <option>��ѯ�Ķ�</option>
  	      <option>���γ���</option>
	</select>  
	<br>
	��������:
	<select id="second" name="second">  
   	<option >��ȫ</option>  
   	<option selected="selected">����</option>  
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
        y.options.add(new Option("��ȫ", "0"));  
        y.options.add(new Option("����", "1",false,true)); 
        y.options.add(new Option("�����", "2"));  
        y.options.add(new Option("���뷨", "3"));  
   }  
  
   if(x.selectedIndex == 1)  
   {  
        y.options.add(new Option("��̬��ֽ", "0"));  
        y.options.add(new Option("��������", "1",false,true));
        y.options.add(new Option("����", "2"));  
   }  
   if(x.selectedIndex == 2)  
   {  
        y.options.add(new Option("����", "0"));  
        y.options.add(new Option("�罻", "1",false,true));
        y.options.add(new Option("����", "2"));  
        y.options.add(new Option("ͨѶ", "3"));  
   }
   if(x.selectedIndex == 3){
	y.options.add(new Option("���", "0")); 
	y.options.add(new Option("��Ƭ����", "1",false,true)); 
	y.options.add(new Option("����", "2")); 
   }
   if(x.selectedIndex == 4){
	y.options.add(new Option("����", "0")); 
	y.options.add(new Option("��Ƶ", "1",false,true)); 
	y.options.add(new Option("����", "2")); 
	y.options.add(new Option("������", "3")); 
	y.options.add(new Option("��̨", "4")); 
   }
   if(x.selectedIndex == 5){
	y.options.add(new Option("����", "0")); 
	y.options.add(new Option("����", "1",false,true)); 
	y.options.add(new Option("ҽ�ƽ���", "2")); 
	y.options.add(new Option("�˶�����", "3")); 
	y.options.add(new Option("ĸӤ", "4")); 
	y.options.add(new Option("��ʳ", "5")); 
	y.options.add(new Option("����", "6")); 
	y.options.add(new Option("�������", "7")); 
   }
   if(x.selectedIndex == 6){
	y.options.add(new Option("����", "0")); 
	y.options.add(new Option("����", "1",false,true)); 
	y.options.add(new Option("��Ʊ", "2")); 
	y.options.add(new Option("��Ʊ", "3")); 
	y.options.add(new Option("����", "4")); 
	y.options.add(new Option("����", "5")); 
   }
   if(x.selectedIndex == 7){
	y.options.add(new Option("�칫", "0")); 
	y.options.add(new Option("�ʼ�", "1",false,true)); 
	y.options.add(new Option("ѧϰ", "2")); 
	y.options.add(new Option("�ݿ�", "3")); 
   }
   if(x.selectedIndex == 8){
	y.options.add(new Option("����", "0")); 
	y.options.add(new Option("������", "1",false,true)); 
	y.options.add(new Option("����", "2")); 
	y.options.add(new Option("Ц��", "3")); 
   }
   if(x.selectedIndex == 9){
	y.options.add(new Option("��ͼ����", "0")); 
	y.options.add(new Option("���й���", "1",false,true)); 
	y.options.add(new Option("��Ʊ", "2")); 
	y.options.add(new Option("�Ƶ�", "3")); 
   }
}  
</script>
	<body>
</html>
END
