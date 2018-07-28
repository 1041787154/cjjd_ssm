<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>测井监督系统</title>
    <meta http-equiv="X-UA-Compatible" content="IE=8;IE=9;" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <script src="/scripts/boot.js" type="text/javascript"></script>
    <style type="text/css">
	    html, body{
	        margin:0;padding:0;border:0;width:100%;height:100%;overflow:hidden;
	    }
	    .logo{
	        font-family:"微软雅黑",	"Helvetica Neue",​Helvetica,​Arial,​sans-serif;
	        font-size:28px;
	        font-weight:bold;        
	        cursor:default;
	        position:relative;top:25px;left:14px;        
	        line-height:28px;
	        color:#444;
	    }    
	    .topNav{
	        position:absolute;right:8px;top:12px;        
	        font-size:12px;
	        line-height:25px;
	    }
	    .topNav a{
	        text-decoration:none;        
	        font-weight:normal;
	        font-size:12px;
	        line-height:25px;
	        margin-left:3px;
	        margin-right:3px;
	        color:#333;        
	    }
	    .topNav a:hover{
	        text-decoration:underline;        
	    }   
	    .mini-layout-region-south img{
	        vertical-align:top;
	    }
	    .mini-layout-region-body{
	    	overflow:hidden;
	    }
	    #mainLayout .mini-layout-border{border:none;}
    </style>
</head>
<body>
<div id="mainLayout" class="mini-layout" style="width:100%;height:100%;border:none;">
    <div title="north" region="north" class="app-header" bodyStyle="overflow:hidden;" height="80" showHeader="false" showSplit="false">
	    <div style="position:absolute;">
	        <div style="float:left;">
		        <a href="/">
					<img src="/images/logo.png" style="width: 66px;border:none;margin-top:8px;margin-left:20px;" />
				</a>
			</div>
	        <div class="logo" style="float:left;">中国石油测井监督系统</div>
		</div>
        <div class="topNav" style="margin-top: 20px;">    
            <a href="/">首页</a> |
            <a href="#" onclick ="UserInforender()">当前用户：${login_user.username}</a> |
            <a href="">角色：${login_user.roleName}</a> |            
            <a href="/logout">退出</a> 
        </div>
    </div>
    <!-- <div showHeader="false" region="south" style="border:0;text-align:center;" height="25" showSplit="false">
        Copyright © 燕山大学信息科学与工程学院版权所有 
    </div> -->
    
    <!--左侧菜单-->
	<div  region="west" title="系统导航" showHeader="true" bodyStyle="padding-left:1px;" showSplitIcon="true" width="230" minWidth="100" maxWidth="350" >
        <!--OutlookMenu-->
        <div id="leftTree" class="mini-outlookmenu" onitemselect="onItemSelect"
            idField="id" parentField="pid" textField="text" borderStyle="border:0" style="color:#003399;">
        </div>
    </div>
    
    <!--右侧内容-->
    <div title="center" region="center" style="border:none;">
        <div  style="width:100%;height:100%;" >
	        <iframe src="/overview" id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>
        </div>        
    </div>
</div>
<script type="text/javascript">
    mini.parse();
    
    function onBeforeExpand(e) {
        var tree = e.sender;
        var nowNode = e.node;
        var level = tree.getLevel(nowNode);

        var root = tree.getRootNode();        
        tree.cascadeChild(root, function (node) {
            if (tree.isExpandedNode(node)) {
                var level2 = tree.getLevel(node);
                if (node != nowNode && !tree.isAncestor(node, nowNode) && level == level2) {
                    tree.collapseNode(node, true);
                }
            }
        });

    }
    
    function UserInforender(){
    	iframe.src ='/auth/user/to/userInfo';
    }
    
	var iframe = document.getElementById("mainframe");

    function onItemSelect(e) {
        var item = e.item;
        iframe.src = item.url;
    }
    
    function loginPage(){
    	window.location.href = '/';
    }
        
    var data = [${userMenuPrivilegeJson}];
    var tree = mini.get("leftTree");
    tree.loadList(data, "id", "pid");
</script>
</body>
</html>
