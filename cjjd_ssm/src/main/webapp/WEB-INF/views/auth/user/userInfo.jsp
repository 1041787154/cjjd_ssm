<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>个人信息管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=8;IE=9;" />
    <meta content="text/html; charset=UTF-8" http-equiv="content-type" />
 	<script src="/scripts/boot.js" type="text/javascript"></script>
    <script src="/scripts/validate.js" type="text/javascript"></script>
	<script src="/scripts/md5.js"></script>
	<script src="/scripts/md5.min.js"></script>
    <style type="text/css">
    html,html body
    {
        font-family:"Microsoft Yahei";
        font-size:13px;
        padding:0;
	    margin:0;
	    width:100%;
	    height:100%;
    }
    h2
    {
        font-family: "Trebuchet MS",Arial,sans-serif;
    }
    p
    {
        line-height:22px;
    }
    </style>
</head>
<body >
     <div style="text-align:center;">
     	<h2>个人信息</h2>
	    <div style="margin:0 auto;">
	     	<fieldset id="fd1" style="width:80%;margin:0 auto;font-size:13px;">
				
		        <div class="form" id="editform"> 
		        <input class="mini-hidden" name="id"/>
		            <table class="form-table" border="0" cellpadding="3" cellspacing="2" style="font-size:13px;width:100%;">
		               
		                <tr>
		                    <td class="form-label" style="width:200px;text-align:right;">用户名：</td>
		                    <td  style="width:450px">
		                        <input name="username"  id ="username" class="mini-textbox" borderStyle="border:none" style="width:100%;" allowInput="false" value="${adminlogin.username}"/>
		                    </td>
		                    <td style="text-align:left;">
		                    	 <a class="Edit_Button" href="javascript:uppassword()">[修改密码]</a>
		                    </td>
		                </tr> 
		                <tr>
		                    <td class="form-label" style="width:200px;text-align:right;">姓名：</td>
		                    <td style="width:442px">
		                        <input name="name" class="mini-textbox" style="width:100%;"onvalidation="onNullValidation" value="${adminlogin.name}"/>
		                    </td>
		                    <td style="width:200px;text-align:left;"id="type_error" class="errorText error"></td>
		                </tr> 
		                
		                
		                 <tr>
	                		<td style="text-align:center;padding-top:5px;padding-right:20px;" colspan="6">
	                    	<a id="btn" class="mini-button" href="javascript:updateRow()">保存</a> 
	                    	
	                		</td>                
	            		</tr>
		            </table>
		           </div>  
		    </fieldset>
	     </div>
     </div>
     <div id="errorWindow" class="mini-window mini-panel-primary" title="" style="width:400px;" showModal="true" allowDrag="true">
		<div id="errorWindow_text"></div>
		<div id="btns">
			<a class="mini-button" href="#" id="yes">确定</a> 
	        <a class="mini-button" href="#" id="no">取消</a>
		</div>
	</div>
	<div id="successWindow" class="mini-window mini-panel-primary" title="" style="width:400px;" showModal="true" allowDrag="true">
		<div id="successWindow_text" style="text-align:center;font-size:20px">修改成功</div>
		<div id="btns" style="text-align:center">
			<a class="mini-button" href="javascript:cancelWin()" id="yes">确定</a> 
		</div>
	</div>
	<!-- ***********************************修改密码窗口 ***********************************-->
			<div id="PeditWindow" class="mini-window mini-panel-primary" title="添加用户" style="width:650px;" 
				showModal="true" allowResize="true" allowDrag="true">
			    <div class="form" id="peditform">
			    	<input class="mini-hidden" name="id" value="${adminlogin.id}"/>
			        <table class="form-table" border="0" cellpadding="1" cellspacing="2" style="margin:0 auto;">
			         	
			            <tr>
			                <td class="form-label" style="width:100px;text-align: right">用户名：</td>
			                <td style="width:150px">
			                    <input name="username" class="mini-textbox"  borderStyle="border:none" allowInput="false" value="${adminlogin.username}"/>
			                </td>
			                <td id="username_error" class="errorText error" style="width:100px"></td>
			            </tr>
			            
			            <tr>
			                <td class="form-label" style="width:100px;text-align: right">请输入密码：</td>
			                <td style="width:150px">
			                    <input id="password1"  class="mini-password"  onvalidation="onNullValidation"/>
			                </td>
			                <td id="password1_error" class="errorText error"></td>
			            </tr>
			            <tr>
			                <td class="form-label" style="width:100px;text-align: right">确认密码：</td>
			                <td style="width:150px">
			                    <input id="password" name="password" class="mini-password"  onvalidation="onCheckPassword" />
			                </td>
			                <td id="password_error" class="errorText error"></td>
			            </tr>
			             <tr>
			             <td style="text-align:center;padding-top:5px;padding-right:20px;" colspan="6">
			                 <a id="btn" class="mini-button" href="javascript:uppassword()">确定</a> 
			                 <a class="mini-button" href="javascript:cancelRow()">取消</a>
			             </td>                
			         </tr>
			        </table>
			    </div>
			</div>
</body>
</html>


<script type="text/javascript">
    mini.parse();
    var errorWindow = mini.get("errorWindow");
    var successWindow = mini.get("successWindow");
    var PeditWindow = mini.get("PeditWindow");
    var btnYes = document.getElementById("yes");
	var btnNo = document.getElementById("no");
	var datep=mini.get("birth");
	
	function onDrawDate(e) {
        var date = e.date;
        var d = new Date();
        if (date.getTime() > d.getTime()) {
            e.allowSelect = false;
        }
    }
	
	function uppassword(e) {
		PeditWindow.show();
		url="/auth/user/update";
    	var form = new mini.Form("peditform");
    	var data = form.getData();
       form.validate();
       if (form.isValid() == false) return;
        var pwdmd5 =md5(data.password);
        data.password=pwdmd5;
         $.ajax({
            url: url,
            type:"post",
            data: data,
            success: function (text) {
            	successWindow.show();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
           }
        });
    }
	
	//检查密码是否相同
    function onCheckPassword(e){
    	var password1=mini.get("password1").getValue();
    	var password=mini.get("password").getValue();
    	if (e.isValid) {
    		
			if ((e.value != "") == false) {
				
				e.errorText = "不能为空";
				e.isValid = false;
	        	updateError(e);
			}else if(password1!=password){
				
    			e.errorText ="两次密码不同";
    			e.isValid =false;
    			updateError(e);
    		}else {
    			
    			clearText();
    		}
		}
    	
    	
    }
	//更新数据
    function edit() {
    	//clearText();
       
        	var id ='${adminlogin.staff_id}';
            var form = new mini.Form("#editform");
            form.clear();
            form.loading();
            $.ajax({
                url: "/org/staff/get/"+id, 
                type: "post",
                success: function (text) {             	
                    form.unmask();
                    var o = mini.decode(text);
                    form.setData(o);
                    mini.get("username").setValue('${adminlogin.username}');
                },
                error: function () {
                	popWin("表单加载错误");
                	cancelWin(); 
                    form.unmask();
                }
            }); 

    }
    window.onload=edit;
  
    //提交更新和添加的数据
    function updateRow() {
    	url="/org/staff/update";
    	var form = new mini.Form("editform");
       form.validate();
       if (form.isValid() == false) return;
        var data = form.getData();
       	delete data.username;
       	data.birth=datep.getFormValue();
       
       	//grid.loading("保存中，请稍后......");
         $.ajax({
            url: url,
            type:"post",
            data: data,
            success: function (text) {
            	
            	successWindow.show();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
           }
        });
    }
    

    
    //关闭更新和添加窗口
    function cancelRow(){
    	window.location.reload();
    }
    //弹出窗口
    function popWin(text){    	
    	var error = document.getElementById("errorWindow_text"); 	
    	error.innerHTML = text;
    	errorWindow.show();	
    }
    //关闭错误提示窗口
    function cancelWin(){
    	window.location.reload();
    	successWindow.hide();
    	
    }
    //清除验证提示
    function clearText(){
    	var errorTds = document.getElementsByClassName("error");
    	for(var i = 0;i<errorTds.length;i++){
    		errorTds[i].innerHTML = "";
    	}
    }

</script>

