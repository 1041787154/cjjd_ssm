/* modify jquery ajax to deal auth limit */
(function($){
    //首先备份下jquery的ajax方法
    var _ajax=$.ajax;
     
    //重写jquery的ajax方法
    $.ajax=function(opt){
        //备份opt中error和success方法
        var fn = {
            error:function(XMLHttpRequest, textStatus, errorThrown){},
            success:function(data, textStatus){}
        }
        if(opt.error){
            fn.error=opt.error;
        }
        if(opt.success){
            fn.success=opt.success;
        }
        //toastr 插件样式
        toastr.options=
		   	 {
		   	"closeButton":true,//显示关闭按钮
		   	"debug":true,//启用debug
		   	"positionClass":"toast-top-right",//弹出的位置
		   	"showDuration":"300",//显示的时间
		   	"hideDuration":"1000",//消失的时间
		   	"timeOut":"5000",//停留的时间
		   	"extendedTimeOut":"1000",//控制时间
		   	"showEasing":"swing",//显示时的动画缓冲方式
		   	"hideEasing":"linear",//消失时的动画缓冲方式
		   	"showMethod":"fadeIn",//显示时的动画方式
		   	"hideMethod":"fadeOut"//消失时的动画方式
		   	};
        
        //扩展增强处理
        var _opt = $.extend(opt,{
            error:function(XMLHttpRequest, textStatus, errorThrown){
                //错误方法增强处理
                fn.error(XMLHttpRequest, textStatus, errorThrown);
            },
            success:function(data, textStatus, obj){
                //成功回调方法增强处理
            	var test = mini.decode(obj.responseText);
            	if(test.statusCode==1000){
            		//alert("没有权限");
            		toastr.error("没有权限");  
            	}else if(test.statusCode==1010){
            		//alert("登录超时");
            		toastr.error("登录超时");
            		
            	}else if(test.statusCode==1001){
            		//alert("具有权限");
            		//toastr.info("具有权限"); 
            	}else if(test.statusCode==1011){
            		toastr.error("参数问题"); 
            	}
                fn.success(data, textStatus);
            },
            beforeSend:function(XHR){
                //提交前回调方法
                //alert(" I am before ");
            },
            complete:function(XHR, TS){
                //请求完成后回调函数 (请求成功或失败之后均调用)。
            	//alert(" I am complete ");
            }
        });
        return _ajax(_opt);
    };
})(jQuery);