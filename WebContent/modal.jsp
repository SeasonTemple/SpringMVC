<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modal</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">  
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<link rel="${pageContext.request.contextPath}/resources/css/sweetalert2.min.css">
<script src="${pageContext.request.contextPath}/resources/js/sweetalert2.js"></script>
<link rel="${pageContext.request.contextPath}/resources/css/animate.css">
<style type="text/css">
 		.middle {
			margin: 0 auto;
			padding: 200px 200px 100px;
		}
  		*{margin: 0;padding: 0}
        html,body{height: 100%}     /*这里很关键*/
 
        .outer-wrap{
            /*只有同时为html和body设置height: 100%时，这里才生效，
            并且随浏览器窗口变化始终保持和浏览器视窗等高*/
            height: 100%;    
            position: relative;
            background-color: rgba(0, 0, 0, .5);
        }
        .login-panel{
            width: 450px;
            height: 400px;
            background-color: white;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
        }

		#register{
			height: 36px;
		}
		.p1{
			font-size: 30px;
			font-style: 宋体;
			text-align: center;
			text-shadow: 2px 2px 2px rgb(88, 126, 156);
		}
		input{
 			margin: 10px;
		}
		#myModal{
			top: 270px;
 			left: 120px;
 			margin: 0 auto;
		}
</style>
</head>
<body>
<div class="outer-wrap">
	<div class="login-panel">
		<p class="p1">登&nbsp;&nbsp;录</p>
		<hr>
		<div class="input-group input-group-lg">
		<input type="text" class="form-control" placeholder="用户名" aria-describedby="basic-addon1" id="uname">
		</div>
		<div class="input-group input-group-lg">
		<input type="password" class="form-control" placeholder="用户名" aria-describedby="basic-addon1" id="pwd">
		</div>
		<div class="input-group input-group-lg" style="height:50px;">
		<input id="register" value="注册" type="submit" class="form-control" data-toggle="modal" data-target="#myModal" title="nmsl" data-placement="right">
		<input value="登录" type="submit" class="form-control" id="test" >
		</div>
	</div>
<div class="modal fade" id="myModal"  data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" style="text-align: center">注册</h4>
          </div>
          <div class="modal-body" >
			<div style="margin: 0 auto;">
				<form class="bs-example bs-example-form" role="form">
					<div class="input-group input-group">
						<input type="text" class="form-control" placeholder="Twitterhandle">
					</div><br>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Twitterhandle">
					</div><br>
					<div class="input-group input-group">
						<input type="text" class="form-control" placeholder="Twitterhandle">
					</div>
				</form>
			</div>
          </div>
          <div class="modal-footer">
            <button data-dismiss="modal" class="btn btn-default" type="button" id = "close">关闭</button>
            <button class="btn btn-primary" type="button" id = "sublimt">提交</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
	</div>
</div>
<script>
	$(function () { 
		$("[data-toggle='modal']").tooltip(); 
	});
	$('#sublimt').click(function(){
		const Toast = Swal.mixin({
			  toast: true,
			  position: 'top-end',
			  showConfirmButton: false,
			  timer: 3000,
			  onBeforeOpen:()=>{
				  Swal.showLoading()
				  allowOutsideClick:() => !Swal.isLoading()
			  }
			});
			Toast.fire({
			  type: 'success',
			  title: 'Signed in successfully'
			})
	});
	
   $("#test").click(function(){
		var uname = $("input[name='uname']").val();
		var pwd = $("input[name='pwd']").val();
		var code = '1321';
	   Swal.fire({
		   title: 'Submit your Github username',
		   text: 'aaaaa',
		   showCancelButton: true,
		   timer: 10000,
		   showLoaderOnConfirm: true,
		   preConfirm: (isConfirm) => {
			   Swal.showLoading()
			   $.ajax({
		  			type: 'post',
		  			url: 'http://www.baidu.com?${Json}',
		  			data: JSON.stringify({uname: uname,pwd: pwd,code: code}),
		  			dataType: 'Json',
		  			contentType:"application/json",
		  			success: function(data)	{
		  				data.put('msg', 'eeee');
		  				if(data.msg=="success"){
		  					Swal.fire('登录成功','','success')
		  				}
		  				else{
		  					Swal.fire({
		  						title: '登录失败',
		  						type: 'warning',
		  						text: '${data.msg}',
		  					})
		  				}
		  			},
		  			error: function(){}
		  		})
		   },
		   allowOutsideClick:() => !Swal.isLoading()
		 }).then((result) => {
			 if (result.value) {
		     Swal.fire({
		       title: '成功',
		       type: 'success',
		       text: '${data.msg}',
		       timer: 2000
		     }).then((result) => {
		       Swal.showLoading()
				 if (result.value) {
		    		 allowOutsideClick: () => !Swal.isLoading()
// 		    		 location.href="";
				 }
		     })
		   }
		 })
      $("#myModal").modal('hide');
   });
	$("#close").click(function(){
		Swal.fire({
		    type: 'warning', // 弹框类型
		    title: '注销帐号', //标题
		    text: "注销后将无法恢复，请谨慎操作！", //显示内容            
		    confirmButtonColor: '#3085d6',// 确定按钮的 颜色
		    confirmButtonText: '确定',// 确定按钮的 文字
		    showCancelButton: true, // 是否显示取消按钮
		    cancelButtonColor: '#d33', // 取消按钮的 颜色
		    cancelButtonText: "取消", // 取消按钮的 文字

		    focusCancel: true, // 是否聚焦 取消按钮
		    reverseButtons: true  // 是否 反转 两个按钮的位置 默认是  左边 确定  右边 取消
		},function() {
			$("#myModal").modal('hide');
		});
	});
	window.onload=function(){
		var uname="";
		var pwd="";
		var code="";
		Swal.fire({
			title : '登录确认',
			type: 'waring',
			/* confirmButtonText: "确认",
		  	confirmButtonColor: '#ff0000', 
		  	showLoaderOnConfirm: false,*/
		  	width: 250,
		  	timer: 5000,
		  	onBeforeOpen: () => {
		   		Swal.showLoading()
		  		$.ajax({
		  			type: 'post',
		  			url: '#',
		  			data: JSON.stringify({uname: uname,pwd: pwd,code: code}),
		  			dataType: 'Json',
		  			contentType:"application/json",
		  		}).then(response => {
			        if (!response.ok) {
			          throw new Error(response.statusText)
			        }
			        return response.json()
			      })
	 		},
  		 	allowOutsideClick: () => !Swal.isLoading()
		}).then((result) => {
			  if (result.value) {
					Swal.fire({
					  title: '',
					  imageUrl: result.value.avatar_url
					})
			  }
			});
/* 		Swal.fire({
			title: '你好',
			type: 'success'
		})
		 */
	}

//	Swal.fire({
//	  title: 'Submit your Github username',
//	  input: 'text',
//	  inputAttributes: {
//	    autocapitalize: 'off'
//	  },
//	  showCancelButton: true,
//	  confirmButtonText: 'Look up',
//	  showLoaderOnConfirm: true,
//	  preConfirm: (login) => {
//	    return fetch(`//api.github.com/users/${login}`)
//	      .then(response => {
//	        if (!response.ok) {
//	          throw new Error(response.statusText)
//	        }
//	        return response.json()
//	      })
//	      .catch(error => {
//	        Swal.showValidationMessage(
//	          `Request failed: ${error}`
//	        )
//	      })
//	  },
//	  allowOutsideClick: () => !Swal.isLoading()
//	}).then((result) => {
//	  if (result.value) {
//	    Swal.fire({
//	      title: `${result.value.login}'s avatar`,
//	      imageUrl: result.value.avatar_url
//	    })
//	  }
//	});
	
// 		
// 	window.onload=function(){
// 		swal("所以你是禽兽？", {
// 			buttons: {
// 						cancel: "哦不！",
// 						catch: {
// 								text: "是的！",
// 								value: "yeah",
// 								},
// 			 			defeat: "我就是禽兽！",
// 			},
// 		}).then((value) => {
// 			switch (value) {
// 				case "defeat":
// 					swal("好一个禽兽！", "在理，竟无言...", "warning");
// 					break;
// 				case "yeah":
// 					swal("我的天!", "非人哉！", "error");
// 					break;
// 				default:
// 					swal("是好人呐！", "嘤嘤嘤.jpg", "success");
// 			}
// 		});
// 	}
</script>
</body>
</html>