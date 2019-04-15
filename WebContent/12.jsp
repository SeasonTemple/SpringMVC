<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>sweetalert加载弹窗完成自动关闭</title>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!--     <script src="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.all.js"></script>
    <link rel="stylesheet" href="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.css"> -->
    <script src="${pageContext.request.contextPath}/js/sweetalert2.all.min.js"></script>
	<link rel="stylesheet" href="/js/sweetalert2.min.css">
</head>
<body>
<button>查询按钮</button>
<h3>数据如下</h3>
<script type="text/javascript">
    document.querySelector("button").onclick=function(){
        swal.fire({
            title: "正在查询中!",
            showConfirmButton: false,
            type: "warning",
            showCancelButton: false,
        });
    }
    
    window.onload=function(){
    	Swal.fire({
    		  title: 'Error!',
    		  text: 'Do you want to continue',
    		  type: 'error',
    		  confirmButtonText: 'Cool'
    		})
    }
</script>
</body>
</html>
