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
	名称:<input name="name"><br>
        一级分类:
	<select id="first" onChange="change()">  
  	 <option selected="selected">系统工具</option>  
   	<option>主题壁纸</option>  
	</select>  
	二级分类:
	<select id="second">  
   	<option selected="selected">安全</option>  
   	<option >清理</option>  
   	<option>浏览器</option>  
   	<option>输入法</option>  
	</select>  
	<input type="submit" value="提交">
	</form>
</div>
<script>
function change()  
{  
   var x = document.getElementById("first");  
   var y = document.getElementById("second");  
   y.options.length = 0; // 清除second下拉框的所有内容  
   if(x.selectedIndex == 0)  
   {  
        y.options.add(new Option("安全", "0"));  
        y.options.add(new Option("清理", "1", false, true));  // 默认选中省会城市  
        y.options.add(new Option("浏览器", "2"));  
        y.options.add(new Option("输入法", "3"));  
   }  
  
   if(x.selectedIndex == 1)  
   {  
        y.options.add(new Option("动态壁纸", "0"));  
        y.options.add(new Option("桌面美化", "1", false, true));  // 默认选中省会城市  
        y.options.add(new Option("主题", "2"));  
   }  
  
}  
</script>
END
print "<body></html>";
