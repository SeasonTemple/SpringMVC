<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modal</title>
<link rel="stylesheet" href="js/bootstrap.min.css">  
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<link rel="js/sweetalert.css">
</head>
<body>


<button style="margin-left:70px" type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" title="nmsl" data-placement="right">
 提问（点击弹出模态窗口）
</button>
<div class="modal fade" id="myModal"  data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h6 class="modal-title">提问</h6>
            <button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
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
	window.onload=function(){
		swal("所以你是禽兽？", {
			buttons: {
						cancel: "哦不！",
						catch: {
								text: "是的！",
								value: "yeah",
								},
			 			defeat: "我就是禽兽！",
			},
		}).then((value) => {
			switch (value) {
				case "defeat":
					swal("好一个禽兽！", "在理，竟无言...", "warning");
					break;
				case "yeah":
					swal("我的天!", "非人哉！", "error");
					break;
				default:
					swal("是好人呐！", "嘤嘤嘤.jpg", "success");
			}
		});
	}
</script>
</body>
</html>