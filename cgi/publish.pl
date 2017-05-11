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
  	      <option selected="selected">系统工具</option>  
  	      <option>主题壁纸</option>  
  	      <option>社交通讯</option>
  	      <option>拍摄美化</option>
  	      <option>影音播放</option>
  	      <option>生活实用</option>
  	      <option>理财购物</option>
  	      <option>办公学习</option>
  	      <option>咨询阅读</option>
  	      <option>旅游出行</option>
	</select>  
	<br>
	二级分类:
	<select id="second" name="second">  
   	<option >安全</option>  
   	<option selected="selected">清理</option>  
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
        y.options.add(new Option("安全"));  
        y.options.add(new Option("清理")); 
        y.options.add(new Option("浏览器"));  
        y.options.add(new Option("输入法"));  
   }  
  
   if(x.selectedIndex == 1)  
   {  
        y.options.add(new Option("动态壁纸"));  
        y.options.add(new Option("桌面美化"));
        y.options.add(new Option("主题"));  
   }  
   if(x.selectedIndex == 2)  
   {  
        y.options.add(new Option("聊天"));  
        y.options.add(new Option("社交"));
        y.options.add(new Option("婚恋"));  
        y.options.add(new Option("通讯"));  
   }
   if(x.selectedIndex == 3){
	y.options.add(new Option("相机")); 
	y.options.add(new Option("照片美化")); 
	y.options.add(new Option("摄像")); 
   }
   if(x.selectedIndex == 4){
	y.options.add(new Option("音乐")); 
	y.options.add(new Option("视频")); 
	y.options.add(new Option("铃声")); 
	y.options.add(new Option("播放器")); 
	y.options.add(new Option("电台")); 
   }
   if(x.selectedIndex == 5){
	y.options.add(new Option("日历")); 
	y.options.add(new Option("天气")); 
	y.options.add(new Option("医疗健康")); 
	y.options.add(new Option("运动健身")); 
	y.options.add(new Option("母婴")); 
	y.options.add(new Option("美食")); 
	y.options.add(new Option("娱乐")); 
	y.options.add(new Option("生活服务")); 
   }
   if(x.selectedIndex == 6){
	y.options.add(new Option("网购")); 
	y.options.add(new Option("记账")); 
	y.options.add(new Option("彩票")); 
	y.options.add(new Option("股票")); 
	y.options.add(new Option("基金")); 
	y.options.add(new Option("银行")); 
   }
   if(x.selectedIndex == 7){
	y.options.add(new Option("办公")); 
	y.options.add(new Option("笔记")); 
	y.options.add(new Option("学习")); 
	y.options.add(new Option("驾考")); 
   }
   if(x.selectedIndex == 8){
	y.options.add(new Option("新闻")); 
	y.options.add(new Option("电子书")); 
	y.options.add(new Option("漫画")); 
	y.options.add(new Option("笑话")); 
   }
   if(x.selectedIndex == 9){
	y.options.add(new Option("地图导航")); 
	y.options.add(new Option("旅行攻略")); 
	y.options.add(new Option("购票")); 
	y.options.add(new Option("酒店")); 
   }
}  
</script>
	<body>
</html>
END
