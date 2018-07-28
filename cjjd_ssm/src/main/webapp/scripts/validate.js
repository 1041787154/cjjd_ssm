//验证是否为数字
function onNumberValidation(e) {
	if (e.isValid) {
	    if (isNumber(e.value) == false) {
	        e.errorText = "必须输入数字";
	        e.isValid = false;
	        updateError(e);
	    }else{
			e.errorText = " ";
			e.isValid=true;
			updateError(e);
			}
	}
}
function isNumber(v) {
    var re = new RegExp("^-?\\d+$");
    if (re.test(v)) return true;
    return false;
}


//是否为大于0的数字且小于5位数
function onNoZero(e){
	if(e.isValid){
		if (isNumber(e.value) == false ) {
	        e.errorText = "必须输入数字";
	        e.isValid = false;
	        updateError(e);
	    }
		else if(e.value<=0){
			 e.errorText = "必须输入大于0的数字";
		     e.isValid = false;
		     updateError(e);
		}
		else if(e.value/10000 > 1){
			e.errorText = "必须输入小于10000的数字";
		    e.isValid = false;
		    updateError(e);
		}
	}
}
	
	function onIsNumber(e){
		if(e.isValid){
			if (isNumber(e.value) == false ) {
		        e.errorText = "必须输入整数";
		        e.isValid = false;
		        updateError(e);
		    }else{
				e.errorText = " ";
				e.isValid=true;
				updateError(e);
				}
			}
		if(e.isValid){
			if(e.value<=0){
				 e.errorText = "必须输入大于0的数字";
			     e.isValid = false;
			     updateError(e);
			}
			else{
				e.errorText = " ";
				e.isValid=true;
				updateError(e);
				}
		}
}
	


//验证选择列表是否为空
function onNullValidation(e) {
	if (e.isValid) {
		if ((e.value != "") == false) {
			e.errorText = "请选择";
			e.isValid = false;
	        updateError(e);
		}else{
			e.errorText = " ";
			e.isValid=true;
			updateError(e);
		}
	}
}

//验证是否为空
function onNull(e) {
	if (e.isValid) {
		if ((e.value != "") == false) {
			e.errorText = "不能为空";
			e.isValid = false;
	        updateError(e);
		}else{
			e.errorText = " ";
			e.isValid=true;
			updateError(e);
		}
	}
}

function updateError(e) {
    var id = e.sender.name + "_error";
    var el = document.getElementById(id);
    if (el) {
        el.innerHTML = e.errorText;
    }
}




