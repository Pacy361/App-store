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
		request.onreadystatechange=state_Change;
                request.open("GET","http://app.createclouds.cn/cgi/message.pl?type=query");
                request.send();
}	
function sub(){
	var content = document.getElementById("txt").value;
	if(content.length < 1){
		alert("ÇëÊäÈëÄÚÈÝ");
		return;
	}
	var url = "http://app.createclouds.cn/cgi/message.pl?type=add&msg=" + content;
       	request.onreadystatechange=state_Change;
       	request.open("GET",url);
       	request.send();
}
function state_Change()
{
if (request.readyState==4)
  {
	// 4 = "loaded"
  if (request.status==200)
    {
	// 200 = "OK"
	var str=request.responseText; 
    	document.getElementById('msg').innerHTML=str;
    	//alert(strs[0]);
    }
  else
    {
    alert("Problem retrieving XML data:" + request.statusText);
    }
  }
}
