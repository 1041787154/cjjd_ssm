<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>查看权限依赖</title>
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
	    #datagrid .mini-panel-border{
	    	border-left: none;
		    border-right: none;
		    border-bottom: none;
	    }
    </style>
</head>
<body>
	<!-- ***********************************标题栏 ***********************************-->
	<div class="mini-toolbar" style="border:none;" size="36">
		<a class="mini-button" iconCls="icon-collapse" plain="true" tooltip="" onclick="onregrid">权限参数</a>    
		<div style="float:right">
			<a class="mini-button" iconCls="icon-add" onclick="newRow()">增加</a>
			
		</div>
	</div>
	<!-- ***********************************数据显示*********************************** -->
	<div id="outline2" class="mini-fit" >
	    <div id="datagrid" class="mini-datagrid" style="width:100%;height:100%;" url="/auth/parameter/list/${id}" idField="id" allowResize="false" multiSelect="true" 
	    pageSize="15">
		    <div property="columns">
		        <div width="30" allowResize="false" type="indexcolumn" ></div>
             	<div field="parameter_key" width="100" headerAlign="center" align="center" >参数关键字
             		<input property="editor" class="mini-textbox" style="width:100%;"/>
             	</div>
             	 	
		        <div field="type" width="100" headerAlign="center" align="center" renderer="ontypeRenderer">参数类型
		        	<input property="editor" class="mini-combobox" style="width:100%;" data="[{ id: 1, text: '数字' }, { id: 2, text: '字符串'}]"/>  
		        </div>
		        	
		        <div field="required" width="100" headerAlign="center" align="center"renderer="onreRenderer" >是否必需
		        	<input property="editor" class="mini-combobox" style="width:100%;" data="[{ id: 1, text: '是' }, { id: 2, text: '否'}]"/>  
		        </div>
		        	
		    	<div field="comment" width="100" headerAlign="center" align="center">备注
		    		<input property="editor" class="mini-textbox" style="width:100%;"/>
		    	</div>
		    	<div field="action" width="100" headerAlign="center" align="center" renderer="onActionRenderer">操作</div>
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
</body>
</html>
<script type="text/javascript">
    mini.parse();
    var flag = "未变";
    var f = false;
    var grid = mini.get("datagrid");
    var errorWindow = mini.get("errorWindow");
    var btnYes = document.getElementById("yes");
	var btnNo = document.getElementById("no");
	  
    grid.load();
	
	function ontypeRenderer(e){
		var type = e.record.type;
		return type==1?'数字':'字符串';
	}
	
	function onreRenderer(e){
		var re = e.record.required;
		return re==1?'是':'否';
	}
	
	function onActionRenderer(e) {
		var grid = e.sender;
        var record = e.record;
        var uid = record._uid;
        var rowIndex = e.rowIndex;
        var s = '<a class="Edit_Button" href="javascript:editRow(\'' + uid + '\')">[修改]</a>'
        		+ ' <a class="Delete_Button" href="javascript:del(\'' + uid + '\')">[删除]</a>';

        if (grid.isEditingRow(record)) {
			s = '<a class="Edit_Button" href="javascript:updateRow(\'' + uid + '\')">[更新]</a>'
				+ ' <a class="Edit_Button" href="javascript:cancelRow(\'' + uid + '\')">[取消]</a>'
        }
        return s;
     }
	
	 function newRow() {            
         var row = {};
         flag="新增";
         grid.addRow(row, 0);
         grid.cancelEdit();
         grid.beginEditRow(row);
     }
	 
     function editRow(row_uid) {
    	 flag="更新";
         var row = grid.getRowByUID(row_uid);
         if (row) {
             grid.cancelEdit();
             grid.beginEditRow(row);
         }
     }
     
     function cancelRow(row_uid) {            
         grid.reload();
     }
     
     function del(id){
		popWin("确定删除选中记录？");
       	btnYes.onclick = function(){onok(id);};
       	btnNo.onclick = function(){oncanl(id);};
     }
     
     function onok(id){
    	 f = true;
    	 delRow(id);
    	 errorWindow.hide();
     }
     
     function oncanl(id){
    	 f = false;
    	 delRow(id);
    	 errorWindow.hide();
     }
     
     function delRow(row_uid) {
         var row = grid.getRowByUID(row_uid);
         if (row) {
        	 if (f) {
                 grid.loading("删除中，请稍后......");
                 $.ajax({
                     url: "/auth/parameter/delete/" + row.id,
                     success: function (text) {
                         grid.reload();
                     },
                     error: function () {
                     }
                 });
             }
         }
     }

     function updateRow(row_uid) {
         var row = grid.getRowByUID(row_uid);
         grid.commitEdit();
         var rowData = grid.getChanges();
         var json = mini.encode(rowData);
         var json1 =json.substr(json.indexOf("[") + 1, json.indexOf("]")-1);  
         var data = mini.decode(json1);
         var obj ={
        		 "type":data.type,
        		 "privilege_id" :data.privilege_id,
        		 "comment" : data.comment,
        		 "parameter_key" : data.parameter_key,
        		 "required":data.required,
         		 "id" :data.id,
         }
         if(flag=="更新"){
     		 url="/auth/parameter/update"
     	 }else if(flag="新增"){
     		 obj.privilege_id='${id}';
     		 url="/auth/parameter/save" 
     	 }
         grid.loading("保存中，请稍后......");
         $.ajax({
             url: url,
             data: obj,
             type:"post",
             success: function (text) {
                 grid.reload();
             },
             error: function (jqXHR, textStatus, errorThrown) {
                 alert(jqXHR.responseText);
             }
         });

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
</script>