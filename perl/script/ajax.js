	function getRequest() {
	    var xmlHttp = null;
	    try {// Chrome, Firefox, Opera, Safari
	        xmlHttp = new XMLHttpRequest();
	    } catch (e) {
	        try {// Internet Explorer
	            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
	        } catch (e) {
	            try {// Internet Explorer
	                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	            } catch (e) {
	                alert("your browser not support ajax!"); }
	        }
	    }
	    return xmlHttp;
	}
	var request = getRequest();	
	window.onload = function(){
		//初始加载全部应用
		request.onreadystatechange=state_Change;
                request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=全部");
                request.send();

                var btn01Ele = document.getElementById("btn01");
                btn01Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=全部");
                        request.send();
        	};
                var btn02Ele = document.getElementById("btn02");
                btn02Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=系统工具");
                        request.send();
        	};
                var btn03Ele = document.getElementById("btn03");
                btn03Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=主题壁纸");
                        request.send();
        	};
                var btn04Ele = document.getElementById("btn04");
                btn04Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=社交通讯");
                        request.send();
        	};
                var btn05Ele = document.getElementById("btn05");
                btn05Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=拍摄美化");
                        request.send();
        	};
                var btn06Ele = document.getElementById("btn06");
                btn06Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=影音播放");
                        request.send();
        	};
                var btn07Ele = document.getElementById("btn07");
                btn07Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=生活实用");
                        request.send();
        	};
                var btn08Ele = document.getElementById("btn08");
                btn08Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=理财购物");
                        request.send();
        	};
                var btn09Ele = document.getElementById("btn09");
                btn09Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=办公学习");
                        request.send();
        	};
                var btn10Ele = document.getElementById("btn10");
                btn10Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=咨询阅读");
                        request.send();
        	};
                var btn11Ele = document.getElementById("btn11");
                btn11Ele.onclick = function(){
			request.onreadystatechange=state_Change;
                        request.open("GET","http://app.createclouds.cn/cgi/search.pl?name=旅游出行");
                        request.send();
        	};
}	
function sub(){
	var content = document.getElementById("txt").value;
	var url = "http://app.createclouds.cn/cgi/search.pl?name=搜索&search=" + content;
       	request.onreadystatechange=state_Change;
       	request.open("GET",url);
       	request.send();
}
function state_Change()
{
if (request.readyState==4)
  {// 4 = "loaded"
  if (request.status==200)
    {// 200 = "OK"
	str=request.responseText; 
	var strs= new Array(); 
	strs=str.split(","); 
    	document.getElementById('ret').innerHTML=strs[0];
    	document.getElementById('entry1').innerHTML=strs[1];
    	document.getElementById('entry1').href=strs[2];
    	document.getElementById('entry2').innerHTML=strs[3];
    	document.getElementById('entry2').href=strs[4];
    }
  else
    {
    alert("Problem retrieving XML data:" + request.statusText);
    }
  }
}
