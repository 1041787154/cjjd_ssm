<%@ page language="java" contentType="text/html; charset=UTF-8" import="javax.servlet.*,javax.servlet.http.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>中国石油测井监督系统</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link type="text/css" rel="stylesheet" href="/scripts/slide_unlock/slide-unlock.css"> 
    <script src="/scripts/boot.js" type="text/javascript"></script>
 	<script src="/scripts/md5.js"></script>
	<script src="/scripts/md5.min.js"></script>
    <script src="/scripts/validate.js" type="text/javascript"></script>
    <style type="text/css">
	    body
	    {
	        width:100%;height:100%;margin:0;overflow:hidden;
	        font: 12px/1.5 "Microsoft YaHei",tahoma,arial,'Hiragino Sans GB','\5b8b\4f53',sans-serif;
	        background: #fff;
	    }
	    input{  
		    background:#faffbd !important;  
		    outline:none;  
		    border:0px;  
		    -webkit-appearance:none;
		    -webkit-tap-highlight-color: rgba(0, 0, 0, 0); 
		} 
		.header{
			width:940px;margin:0 auto;padding: 22px 0; height: 44px;
		}
		.logo
	    {
	        font-family:"微软雅黑",	"Helvetica Neue",​Helvetica,​Arial,​sans-serif;
	        font-size:28px;
	        font-weight:bold;        
	        cursor:default;
	        position:relative;top:4px;left:14px;        
	        line-height:28px;
	        color:#444;
	    } 
	    .round{
		    height:550px;
		    background:#fc7f03;
		    /* position:absolute; */
		    top:0;
		    left:0;
		    width:100%;
		    display:inline-block;
	    }
	    .actionpart{
	    	margin:0 auto;
	    }
	    .loginimg{
		    /* position: absolute;
		    top: 120px;
		    left: 300px; */
	    }
	    #loginWindow{
	    	position:relative;
	    }
	    .outform{
		    width:350px;
		    /* position: absolute;
		    top: 120px;
		    right: 300px; */
		    color: #404040;
	    }
	    .form{
		    position:relative;
		    display: block;
		    width:350px;
		    padding: 30px 28px 0px;
		    color: #6c6c6c;
		    background: #fff;
		    position: relative;
		    margin: 0 auto;
	    }
	    .login-title{
		    margin: 0;
		    padding: 0;
		    height: 18px;
		    line-height: 18px;
		    font-size: 16px;
		    color: #3c3c3c;
		    margin-top: 9px;
		    padding-bottom: 8px;
		    font-weight: 700;
	    }
	    .login-name{
		    margin-top: 20px;
		    position: relative;
		    display:inline-block;
		    float:left;
		    width: 298px;
		    font-size: 14px;
		    line-height: 42px;
		    height: 44px;
		    border: 1px solid #ddd;
		    background: #faffbd;
	    }
	    .login-password{
		    margin-top: 20px;
		    position: relative;
		    display:inline-block;
		    width: 298px;
		    font-size: 14px;
		    line-height: 42px;
		    height: 44px;
		    border: 1px solid #ddd;
		    background: #faffbd;
	    }
	    .login-button{
		    height: 42px;
		    text-align:center;
		    margin: 20px auto;
		    position: relative;
		    vertical-align: middle;
	    
	    }
	    .form input{
	    	background:#fff;
	    }
	    .right input{
	    
	    }
	    .login-button a{
		    width: 120px;
		    display: inline-block;
		    overflow: hidden;
		    vertical-align: middle;
		    text-align:center;
		    border-radius: 3px;
		    cursor: pointer;
		    zoom: 1;
	    }
	   	.login-name .mini-textbox-border{
	   		border:0;
	   		height:24px;
	   		padding-left:0;
	   		padding-right:0;
	   	}
	   	.login-password .mini-textbox-border{
	   		border:0;
	   		height:24px;
	   		padding-left:0;
	   		padding-right:0;
	   	}
	   	input:-webkit-autofill{
	   		background: #fff;
	   	}
	   	#demo { 
		    width: 298px; 
		    padding: 10px 0; 
		    border: 0px dashed #d5d4ff; 
		    border-radius: 10px; 
		    -moz-border-radius: 10px; 
		    -webkit-border-radius: 10px; 
		    text-align: left; 
		} 
    </style>
</head>
<body> 
<table style="height:100%;width:100%;" cellpadding="0" cellspacing="0">
	<tr>
		<td></td>
	</tr>
	<tr>
		<td style="height:700px;vertical-align: top;">
			<div class="header">
				<div style="float:left;">
				    <a href="index.html">
						<img src="/images/logo.png" style="width: 66px;border:none;" />
					</a>
				</div>
				<div class="logo" style="float:left;height:70px;line-height:55px;">
				  	中国石油测井监督系统
				</div>
			</div>
			<div id="loginWindow">
				<div class="round">
					<div class="actionpart">
						<table style="margin:80px auto;" cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<div class="loginimg"><img src="/images/timg.png" style="height: 380px;"></div>
								</td>
								<td>
									<div id="loginForm" class="outform">
								    	<div class="form">
								    		<div class="login-title">
								    			<span>系统登录</span>
								    		</div>
								    		<div class="login-name">
								    			<div class="left" style="float:left;">
								    				<div for="username$text" style="background-image:url('/images/icon-username.png');width: 41px;height: 42px;"></div>
								    			</div>
								    		    <div class="right" style="float:left;padding-top: 10px;padding-left: 10px;">
								    		    	<input id="username" name="username" class="mini-textbox" required="true" style="width: 240px;font-size: 14px;line-height:24px;height:24px;"/>
								    		    </div>
								    		</div>
								    		<div class="login-password">
								    			<div class="left" style="float:left;">
								    				<div for="pwd$text" style="background-image:url('/images/icon-password.png');width: 41px;height: 42px;"></div>
								    			</div>
								    			<div class="right" style="float:left;padding-top: 10px;padding-left: 10px;">
								    				<input id="password" name="password" class="mini-password" requiredErrorText="error password" required="true" style="width: 240px;font-size: 14px;line-height:24px;height:24px;" onenter="onLoginClick"/>
								    			</div>
								    		</div>
								    		<div id="demo" class="login-slide-unlock">
									    		<div id="slider"> 
												    <div id="slider_bg"></div> 
												    <span id="label"></span> 
												    <span id="labelTip">拖动滑块验证</span> 
												</div>
											</div>
								    		<div class="login-button">
								    			 <a id="loginBtn" onclick="onLoginClick" enabled=false class="mini-button">登录</a>
								                 <a onclick="onResetClick" class="mini-button">重置</a>
								    		</div>
								    		<div style="height:30px;">
								    		</div>
								    	</div>
								    </div>
								</td>
							</tr>
						</table>
				    </div>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td></td>
	</tr>
</table>
<script type="text/javascript" src="/scripts/slide_unlock/jquery.slideunlock.js"></script>  
<script type="text/javascript" >
    mini.parse();
    var loginWindow = mini.get("loginWindow");
	
    $(function () { 
        var slider = new SliderUnlock("#slider",{ 
                successLabelTip : "验证成功"     
            },function(){ 
                //alert("验证成功,即将跳转至百度"); 
                //window.location.href="http://www.baidu.com"
                mini.get("#loginBtn").enable();
            }); 
        slider.init(); 
    }); 
    
    function onLoginClick(e) {
        var form = new mini.Form("#loginWindow");
        form.validate();
        if (form.isValid() == false) return;
        var data = form.getData();
        var username = data.username;
        var password =data.password;
       	var pwdmd5 = md5(data.password); 
       	
        $.ajax({
            url:"/loginCheck",
            data:{username: username, password: pwdmd5},
            type:"post",  
            success:function(obj){  
                if(obj.status=='logined'){
                    window.location.replace("/");//登录成功  
                }else if(obj.status == 'failed'){  
                    alert('用户名或密码不正确!');  
                }else if(obj.status == 'locked'){
                	alert('登录失败次数过多，用户已锁定！');
                }
            },  
            error:function(){  
                alert('系统错误');  
            },  
            complete:function(obj){  
                if(obj.status==200);  
            }  
        });
    }
    
    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays*24*60*60*1000));
        var expires = "expires="+d.toUTCString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
    }
    
    function dateFtt(fmt,date){ //author: meizz   
		var o = {   
	        "M+" : date.getMonth()+1,                  
	        "d+" : date.getDate(),                      
	        "h+" : date.getHours(),                     
	        "m+" : date.getMinutes(),                   
	        "s+" : date.getSeconds(),                   
	        "q+" : Math.floor((date.getMonth()+3)/3), 
	        "S"  : date.getMilliseconds()               
      	};   
      	if(/(y+)/.test(fmt))   
        fmt=fmt.replace(RegExp.$1, (date.getFullYear()+"").substr(4 - RegExp.$1.length));   
      	for(var k in o)   
        	if(new RegExp("("+ k +")").test(fmt))   
      			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
      	return fmt;   
    } 
    
    function crtTimeFtt(value){
        var crtTime = new Date(value);
        return dateFtt("yyyy-MM-dd hh:mm:ss",crtTime);    
    }
    
    function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
        return currentdate;
    }
    
    function onResetClick(e) {
        var form = new mini.Form("#loginWindow");
        form.clear();
    }
    
</script>

</body>
</html>
