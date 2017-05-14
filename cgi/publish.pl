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
                        <a href=http://app.createclouds.cn>首页</a>
        </div>
	<form action="publish_mid.pl" method="POST" ENCTYPE="multipart/form-data">
	名称:<input name="filename"><br>
        一级分类:
	<select onChange="change()" id="first" name="first">  
  	      <option selected="selected">必备软件</option>  
	      <option>休闲娱乐</option>
	      <option>实用工具</option>
	      <option>智能服务</option>
	</select>  
	<br>
	二级分类:
	<select id="second" name="second">  
   	<option >聊天工具</option>  
   	<option selected="selected">充值</option>  
   	<option>浏览器</option>  
   	<option>输入法</option>  
	</select>  
	<br>
	<input type="file" value="选择文件" name="localfile">
	<br>
	<br>
	<input type="submit" value="提交">
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
        y.options.add(new Option("聊天工具"));  
        y.options.add(new Option("充值")); 
        y.options.add(new Option("浏览器"));  
        y.options.add(new Option("输入法"));  
   }  
  
   if(x.selectedIndex == 1)  
   {  
        y.options.add(new Option("壁纸"));  
        y.options.add(new Option("音乐"));  
        y.options.add(new Option("游戏"));  
        y.options.add(new Option("影视"));  
   }  
   if(x.selectedIndex == 2)  
   {  
        y.options.add(new Option("办公"));  
        y.options.add(new Option("计算"));  
        y.options.add(new Option("邮箱"));  
        y.options.add(new Option("图片"));  
   }
   if(x.selectedIndex == 3){
	y.options.add(new Option("相机")); 
	y.options.add(new Option("出行")); 
	y.options.add(new Option("美食")); 
	y.options.add(new Option("地图")); 
   }
}  
</script>
	<body>
</html>
END
