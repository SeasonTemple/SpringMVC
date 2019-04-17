<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modal</title>
<link rel="stylesheet" href="js/bootstrap.min.css">  
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<link rel="js/sweetalert.css">
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
		<input type="text" class="form-control" placeholder="用户名" aria-describedby="basic-addon1">
		</div>
		<div class="input-group input-group-lg">
		<input type="password" class="form-control" placeholder="用户名" aria-describedby="basic-addon1">
		</div>
		<div class="input-group input-group-lg" style="height:50px;">
		<input id="register" value="注册" type="submit" class="form-control" data-toggle="modal" data-target="#myModal" title="nmsl" data-placement="right">
		<input value="登录" type="submit" class="form-control" >
		</div>
	</div>
<div class="modal fade" id="myModal"  data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" style="text-align: center">注册</h4>
          </div>
          <div class="modal-body">
            <p>问题描述</p>
            <textarea class="form-control"></textarea>
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
   $("#sublimt").click(function(){
      swal("信息已经提交" , '', 'success');
      $("#myModal").modal('hide');
   });
	$("#close").click(function(){
		$("#myModal").modal('hide');
	});
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