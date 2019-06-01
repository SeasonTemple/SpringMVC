	
	/*$(function() {
		$("[data-toggle='tooltip']").tooltip();
	});
	
  	$(function() {
		$("[data-toggle='modal']").tooltip();
	});*/
  	
  	$(function() {
	 	$('#register').click(function() {
	  		 $("#myModal").modal('show');
			 $('#myModal').on('shown.bs.modal',function(e){
				 $("input[name='runame']").focus();
		    });
		});
  	});
  	
 	function changeInfo(did,sid,hid,tag,msg){
 		if(tag == "error"){
	 		/* $(id).attr({"class":"glyphicon glyphicon-remove", "style":"color:rgba(255, 50, 50, .7)"}); */
	 		$(did).attr("class","form-group has-error has-feedback");
	 		$(sid).attr("class","glyphicon glyphicon-remove form-control-feedback");
	 		$(hid).html(msg);
 		}
 		if(tag == "ok"){
 			/* $(id).attr({"class":"glyphicon glyphicon-ok", "style":"color:rgba(50, 255, 50, .7)"}); */
 			$(did).attr("class","form-group has-success has-feedback");
	 		$(sid).attr("class","glyphicon glyphicon-ok form-control-feedback");
	 		$(hid).html("");
 		}
 	}
 	
 	function getLength(str){
	 	return str.replace(/[^\x00-xff]/g, "xx").length;
 	}
 	
 	$(function() {
	 	$("input[name='runame']").blur(function(){
	 		var uname = $("input[name='runame']").val();
		  	var re = /^(?!\d+$)[a-zA-Z0-9\u4E00-\u9FA5]\S+$/g;
	 		if(getLength(uname)<4||10<getLength(uname)||!re.test(uname)){
	 			/* setTooltip("runame", "username", "用户名不合法!应由英文字母,数字或汉字组成(不能为纯数字或字母,4-10个字符之内)"); */
	 			changeInfo(icon_uname, span1, helpBlock1,"error", "用户名不合法!应由英文字母,数字组成或汉字(3-10个字符以内)");
	 			$("#submit").addClass("disabled");
	 		}
	 		else{
	 			changeInfo(icon_uname,span1,helpBlock1,"ok",null);
	 			$("#submit").removeClass("disabled");
	 		}
	 	});
 	});
  	
 	$(function() {
	 	$("input[name='rpwd']").blur(function(){
	 		var pwd = $("input[name='rpwd']").val();
			var re = /^(?!\d+$)[a-zA-Z0-9]\S{5,12}$/g;
	 		if(!re.test(pwd)){
	 			/* setTooltip("rpwd", "password", "密码不合法!应由英文字母或数字组成(不能为纯数字,6-12个字符之内)"); */
	 			changeInfo(icon_pwd, span2, helpBlock2,"error", "密码不合法!应由英文字母或数字组成(6-12个字符以内)");
	 			$("#submit").addClass("disabled");
	 		}
	 		else{
	 			changeInfo(icon_pwd, span2, helpBlock2,"ok",null);
	 			$("#submit").removeClass("disabled");
	 		}
	 	});
	});
 	
 	$(function() {
	  	$("input[name='rpwdc']").blur(function(){
	  		var pwd = $("input[name='rpwd']").val();
			var pwdc = $("input[name='rpwdc']").val();
			var re = /^(?!\d+$)[a-zA-Z0-9]\S{5,12}$/g;
			if(pwd!= pwdc){
	 			/* setTooltip("rpwdc", "passwordc", "两次密码不一致!"); */
				changeInfo(icon_pwdc, span3, helpBlock3,"error", "两次密码不一致!");
	 			$("#submit").addClass("disabled");
	 		}
			else{
				changeInfo(icon_pwdc, span3, helpBlock3,"ok",null);
	 			$("#submit").removeClass("disabled");
	 		}
	  	});
 	});
  	
 	$(function() {
	  	$("input[name='remail']").blur(function(){
	  		var email = $("input[name='remail']").val();
	  		var re = /^[\w]+@[\w]+.com/g;
	  		if(!re.test(email)){
	 			/* setTooltip("remail", "email", "邮箱地址不合法!"); */
	 			changeInfo(icon_email, span4, helpBlock4,"error", "邮箱地址不合法!");
	 			$("#submit").addClass("disabled");
	 		}
	 		else{
	 			changeInfo(icon_email, span4, helpBlock4,"ok",null);
	 			$("#submit").removeClass("disabled");
	 		}
	  	});
  	});
  		
 	$(function() {
	  	$("input[name='rprofile']").keyup(function(){
	  		var profile = $("input[name='rprofile']").val();
	  		var re = /[\u4E00-\u9FA5]{2,}/g
	  		if(!re.test(profile)){
	 			/* setTooltip("rprofile", "profile", "职称不合法!"); */
	  			changeInfo(icon_profile, span5, helpBlock5,"error", "职称名不合法!");
	 			$("#submit").addClass("disabled");
	 		}
	 		else{
	 			changeInfo(icon_profile,span5,helpBlock5,"ok",null);
	 			$("#submit").removeClass("disabled");
	 		}
	  	});
 	});
  	
 	
 	
 	$(function() {
		$("#close").click(function() {
			clearInput();
			clearSpan();
			$("#myModal").modal('hide');
		});
 	});
	
	function clearInput(){
		$("input[name='runame']").val("");
		$("input[name='rpwd']").val("");
		$("input[name='rpwdc']").val("");
		$("input[name='remail']").val("");
		$("input[name='rprofile']").val("");
		$("#icon_uname").attr("class","form-group");
		$("#icon_pwd").attr("class","form-group");
		$("#icon_pwdc").attr("class","form-group");
		$("#icon_email").attr("class","form-group");
		$("#icon_profile").attr("class","form-group");
	}
	
	function clearSpan(){
		var i = 5;
		var k = 1;
		for(k;k<=i;k++){
	 		$("#span"+k).attr("class","");
			$("#helpBlock"+k).html("");
		}
	}
