<%@ page language="java" contentType="text/html; charset=UTF-8" import="javax.servlet.*,javax.servlet.http.*" pageEncoding="UTF-8"%>
<html>
<head>
    <title>功能模块管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=8;IE=9;" />
    <meta content="text/html; charset=UTF-8" http-equiv="content-type" />
 	<script src="/scripts/boot.js" type="text/javascript"></script>
    <script src="/scripts/validate.js" type="text/javascript"></script>
    <style type="text/css">
	    html,html body {
	        font-family:"Microsoft Yahei";
	        font-size:13px;
	        padding:0;
	        margin:0;
	        width:100%;
	        height:100%;
	    }
	    h2 {
	        font-family: "Trebuchet MS",Arial,sans-serif;
	    }
	    p {
	        line-height:22px;
	    }
	    .error{
	    	text-align: left;
	    	color: rgb(247, 17, 0);
	    	font-size: 13px;
	    }
	    #errorWindow_text{margin-bottom:10px;font-size:18px;color:#000;}
	    #btns,#errorWindow_text{text-align:center;}
	    #datagridM .mini-panel-border{
	    	border:none;
	    }
	    #datagridF .mini-panel-border{
	    	border:none;
	    }
	    #outline1 .mini-splitter-border{
	    	border:none;
	    }
    </style>
</head>
<body>
<div class="mini-splitter" style="width:100%;height:100%;" vertical="true" allowResize="false" handlerSize="0">
	<!-- ***********************************工具栏 ***********************************-->
	<div class="mini-toolbar" size="40">
		<a class="mini-button" iconCls="icon-collapse" plain="true" onclick="back()" tooltip="">功能模块管理</a>    
		<div style="float:right">
			<a class="mini-button" iconCls="icon-add" onclick="add()">新增模块</a>
			<a class="mini-button" iconCls="icon-add" onclick="addF()">新增功能</a>
			<span class="separator"></span>
			<span class="tooltip">功能查询：</span>
			<input class="mini-textbox" id="searchs" emptyText="功能模块名称" />      
			<a class="mini-button" plain="true" onclick="search">查询</a>
		</div>
	</div>
	<div id="outline1" class="mini-splitter" style="width:100%;height:100%;">
		<div size="475">
			<!-- ***********************************数据显示*********************************** -->
			<div class="mini-fit" >
			    <div id="datagridM" class="mini-datagrid" style="width:100%;height:100%;" url="/auth/module/list" idField="id" allowResize="false" multiSelect="false"
			    onrowclick="onSelection">
				    <div property="columns">
				        <div width="40" allowResize="false" type="indexcolumn" ></div>
				        <div field="moduleName" width="120" headerAlign="center" align="center" >模块名称</div>
				        <div field="moduleOrder" width="40" headerAlign="center" align="center">排序</div>
		                <div field="remark" width="auto" headerAlign="center" align="center">备注</div>
		                <div field="action" width="100" headerAlign="center" align="center" headerCls="border_right_none" cellCls="border_right_none" renderer="onActionRenderer">操作</div>
				    </div>
				</div>
			</div>
			<!-- ***********************************提示窗口*********************************** -->
			<div id="errorWindow" class="mini-window mini-panel-primary" title="" style="width:400px;" showModal="true" allowDrag="true">
				<div id="errorWindow_text"></div>
				<div id="btns">
					<a class="mini-button" href="#" id="yes">确定</a> 
			        <a class="mini-button" href="#" id="no">取消</a>
				</div>
			</div>
			<!-- ***********************************更新和添加窗口 ***********************************-->
		    <div id="editWindow" class="mini-window mini-panel-primary" title="模块管理" style="width:650px;" 
		   		showModal="true" allowResize="true" allowDrag="true">
		        <div class="form" id="editform">
		        	<input class="mini-hidden" name="id"/>
		            <table class="form-table" border="0" cellpadding="1" cellspacing="2" style="margin:0 auto;">
		                <tr>
		                    <td class="form-label" style="width:100px;text-align: right">模块名称：</td>
		                    <td style="width:150px">
		                        <input name="moduleName" class="mini-textbox" onvalidation="onNullValidation"/>
		                    </td>
		                    <td id="module_name_error" class="errorText error"></td>
		                </tr>
		                <tr>
		                    <td class="form-label" style="width:100px;text-align: right">模块排序：</td>
		                    <td style="width:150px">
		                        <input name="moduleOrder" class="mini-textbox" onvalidation="onNullValidation"/>
		                    </td>
		                    <td id="module_order_error" class="errorText error"></td>
		                </tr>
		                <tr>
					        <td style="text-align:right;">备注信息：</td>
					        <td colspan="2" >
					            <input name="remark" class="mini-textarea" style="width:150px;height:60px;"/>
					        </td>        
					        <td></td>
					    </tr>
		                 <tr>
			                <td style="text-align:center;padding-top:5px;padding-right:20px;" colspan="6">
			                    <a id="btn" class="mini-button" href="javascript:updateRow()">确定</a> 
			                    <a class="mini-button" href="javascript:cancelRow()">取消</a>
			                </td>                
			            </tr>
		            </table>
		        </div>
		    </div>
    	</div>
	    <div>
		    <!-- ***********************************数据显示*********************************** -->
			<div class="mini-fit" >
			    <div id="datagridF" class="mini-datagrid" style="width:100%;height:100%;" url="/auth/function/list" 
			    	idField="id" allowResize="false" multiSelect="true">
				    <div property="columns">
				        <div width="40" allowResize="false" type="indexcolumn"></div>
				        <div field="functionName" width="180" headerAlign="center" align="center" >功能名称</div>
				        <div field="functionOrder" width="40" headerAlign="center" align="center">排序</div>
				        <div field="moduleName" width="180" headerAlign="center" align="center" >所属模块</div>
		                <div field="remark" width="auto" headerAlign="center" align="center">备注</div>
		                <div field="action" width="100" headerAlign="center" align="center" renderer="onActionRendererF">操作</div>
				    </div>
				</div>
			</div>
			<!-- ***********************************更新和添加窗口 ***********************************-->
		    <div id="editWindowF" class="mini-window mini-panel-primary" title="功能管理" style="width:650px;" 
		   		showModal="true" allowResize="true" allowDrag="true">
		        <div class="form" id="editformF">
		        	<input class="mini-hidden" name="id"/>
		            <table class="form-table" border="0" cellpadding="1" cellspacing="2" style="margin:0 auto;">
		                <tr>
		                    <td class="form-label" style="width:100px;text-align: right">功能名称：</td>
		                    <td style="width:150px">
		                        <input name="functionName" class="mini-textbox" onvalidation="onNullValidation"/>
		                    </td>
		                    <td id="function_name_error" class="errorText error"></td>
		                </tr>
		                <tr>
		                    <td class="form-label" style="width:100px;text-align: right">功能排序：</td>
		                    <td style="width:150px">
		                        <input name="functionOrder" class="mini-textbox" onvalidation="onNullValidation"/>
		                    </td>
		                    <td id="module_order_error" class="errorText error"></td>
		                </tr>
		                <tr>
		                    <td class="form-label" style="width:100px;text-align: right">所属模块：</td>
		                    <td style="width:150px">
		                        <input id="moduleId" name="moduleId" class="mini-combobox" url="/auth/module/combo" 
		                        valueField="id"  />
		                    </td>
		                    <td id="module_id_error" class="errorText error"></td>
		                </tr>
		                <tr>
					        <td style="text-align:right;">备注信息：</td>
					        <td colspan="2" >
					            <input name="remark" class="mini-textarea" style="width:150px;height:60px;"/>
					        </td>        
					        <td></td>
					    </tr>
		                 <tr>
			                <td style="text-align:center;padding-top:5px;padding-right:20px;" colspan="6">
			                    <a id="btn" class="mini-button" href="javascript:updateRowF()">确定</a> 
			                    <a class="mini-button" href="javascript:cancelRow()">取消</a>
			                </td>                
			            </tr>
		            </table>
		        </div>
		    </div>
	    </div>
    </div>
</div>
</body>
</html>
<script type="text/javascript">
    mini.parse();
    var editWindow = mini.get("editWindow");
    var editWindowF = mini.get("editWindowF");
    var errorWindow = mini.get("errorWindow");
    var grid = mini.get("datagridM");
    var grid2 = mini.get("datagridF");
    var btnYes = document.getElementById("yes");
	var btnNo = document.getElementById("no");
    grid.load();
    grid2.load();
    
    //系统模块选择查询功能
    function onSelection(e){
    	var grid = e.sender;
    	var record = grid.getSelected();
    	if(record){
    		grid2.load({moduleId:record.id});
    	}
    }
    
    function onActionRenderer(e) {
        var record = e.record;
        var id = record.id;
        var s = '<a class="Edit_Button" href="javascript:edit(\'' + id + '\')">[修改]</a>'
                + ' <a class="Delete_Button" href="javascript:remove(\'' + id + '\')">[删除]</a>';
        return s;
    }
    
    function onActionRendererF(e) {
        var record = e.record;
        var id = record.id;
        var s = '<a class="Edit_Button" href="javascript:editF(\'' + id + '\')">[修改]</a>'
                + ' <a class="Delete_Button" href="javascript:removeF(\'' + id + '\')">[删除]</a>';
        return s;
    }
    
    //查询数据
    function search() {
        var value = mini.get("#searchs").getValue(); 
        grid2.load({functionName: value});
    }
    
  	//返回
    function back() {
        grid.load();
        grid2.load();
    }
    
    //添加数据
    function add(){
    	clearText();
    	mini.get("#btn").setText("确定");
    	var form = new mini.Form("#editform");
        form.clear();
    	editWindow.show();
    }
    
    //更新数据
    function edit() {
    	clearText();
    	mini.get("#btn").setText("更新");
    	var row = grid.getSelected();
        if (row) {
        	var id = row.id;
            editWindow.show();
            var form = new mini.Form("#editform");
            form.clear();
            form.loading();
            $.ajax({
                url: "/auth/module/get", 
                type: "post",
                data: {id: id},
                success: function (text) {             	
                    form.unmask();
                    var o = mini.decode(text);
                    form.setData(o);     
                },
                error: function () {
                	popWin("表单加载错误");
                	cancelWin(); 
                    form.unmask();
                }
            });

        }else{
        	popWin("请选中一条记录");
        	cancelWin();     	
        }
    }
    
    //提交更新和添加的数据
    function updateRow() {
    	var btnText = mini.get("#btn").getText();
    	if(btnText == "确定"){
    		url="/auth/module/add";
    	}else{
    		url="/auth/module/save";
    	}
        var form = new mini.Form("editform");
        form.validate();
        if (form.isValid() == false) return;
        var data = form.getData();
        grid.loading("保存中，请稍后......");
        $.ajax({
            url: url,
            type:"post",
            data: data,
            success: function (text) {
                grid.reload();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
            }
        });
        editWindow.hide();
    }
    
    //删除数据
    function remove() { 
        var rows = grid.getSelecteds();
        if (rows.length > 0) {
        	popWin("确定删除选中记录？");
        	//点击确认时删除
           	btnYes.onclick = function(){
                var ids = [];
                for (var i = 0, l = rows.length; i < l; i++) {
                    var r = rows[i];
                    ids.push(r.id);
                }
                var id = ids.join(',');
                grid.loading("操作中，请稍后......");
                $.ajax({
                    url: "/auth/module/del",
                    data:{id:id},
                    type:"post",
                    success: function (text) {
                    	grid.reload();
                    },
                    error: function () {
                    }
                });
                errorWindow.hide();	
           	}
        	//点击取消时不删除
           	btnNo.onclick = function(){
           		errorWindow.hide();	
           	}
        } else {
        	popWin("请选中一条记录");
        	cancelWin();
        }
    }
    
    //关闭更新和添加窗口
    function cancelRow(){
   	   grid.reload();
       editWindow.hide();
       editWindowF.hide();
    }
    
    //弹出窗口
    function popWin(text){    	
    	var error = document.getElementById("errorWindow_text"); 	
    	error.innerHTML = text;
    	errorWindow.show();	
    }
    
    //关闭错误提示窗口
    function cancelWin(){
    	btnYes.onclick = function(){
    		errorWindow.hide();	
    	}
    	btnNo.onclick = function(){
    		errorWindow.hide();	
    	}
    }
    
    //清除验证提示
    function clearText(){
    	var errorTds = document.getElementsByClassName("error");
    	for(var i = 0;i<errorTds.length;i++){
    		errorTds[i].innerHTML = "";
    	}
    }
    
    //功能的增删查改
    //添加功能数据
    function addF(){
    	clearText();
    	mini.get("#btn").setText("确定");
    	var form = new mini.Form("#editformF");
        form.clear();
    	editWindowF.show();
    }
    
    //更新数据
    function editF() {
    	clearText();
    	mini.get("#btn").setText("更新");
    	var row = grid2.getSelected();
        if (row) {
        	var id = row.id;
        	var Mid = row.moduleId;
            editWindowF.show();
            var form = new mini.Form("#editformF");
            form.clear();
            form.loading();
            $.ajax({
                url: "/auth/function/get", 
                type: "post",
                data: {id: id},
                success: function (text) {             	
                    form.unmask();
                    var o = mini.decode(text);
                    id=o.id;
                    mini.get("moduleId").load("/auth/module/combo");
                    form.setData(o);     
                },
                error: function () {
                	popWin("表单加载错误");
                	cancelWin(); 
                    form.unmask();
                }
            });

        }else{
        	popWin("请选中一条记录");
        	cancelWin();     	
        }
    }
    
  	//提交更新和添加的数据
    function updateRowF() {
    	var btnText = mini.get("#btn").getText();
    	if(btnText == "确定"){
    		url="/auth/function/add";
    	}else{
    		url="/auth/function/save";
    	}
        var form = new mini.Form("editformF");
        form.validate();
        if (form.isValid() == false) return;
        var data = form.getData();
        grid2.loading("保存中，请稍后......");
        $.ajax({
            url: url,
            type:"post",
            data: data,
            success: function (text) {
                grid2.reload();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
            }
        });
        editWindowF.hide();
    }
  	
    //删除数据
    function removeF() { 
        var rows = grid2.getSelecteds();
        if (rows.length > 0) {
        	popWin("确定删除选中记录？");
        	//点击确认时删除
           	btnYes.onclick = function(){
                var ids = [];
                for (var i = 0, l = rows.length; i < l; i++) {
                    var r = rows[i];
                    ids.push(r.id);
                }
                var id = ids.join(',');
                grid2.loading("操作中，请稍后......");
                $.ajax({
                    url: "/auth/function/del",
                    type:"post",
                    data: {id: id},
                    success: function (text) {
                    	 grid2.reload();
                    },
                    error: function () {
                    }
                });
                errorWindow.hide();	
           	}
        	//点击取消时不删除
           	btnNo.onclick = function(){
           		errorWindow.hide();	
           	}
        } else {
        	popWin("请选中一条记录");
        	cancelWin();
        }
    }
</script>