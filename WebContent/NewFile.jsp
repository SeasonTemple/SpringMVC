<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.9.0.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/es6-promise/latest/es6-promise.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<link rel="stylesheet" href="/js/sweetalert.css">
<!-- <link rel="stylesheet" href="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.css">
<script src="https://cdn.bootcss.com/limonte-sweetalert2/7.21.1/sweetalert2.all.js"></script> -->
<style type="text/css">
.swal-overlay {
	background-color: rgba(43, 165, 137, 0.45);
}

/* .swal-title {
	margin: 0px;
	font-size: 16px;
	box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.21);
	margin-bottom: 28px;
} */
.swal-text {
	background-color: #FEFAE3;
	padding: 17px;
	border: 1px solid #F0E1A1;
	display: block;
	margin: 22px;
	text-align: center;
	color: #61534e;
}

.swal-footer {
	background-color: rgb(245, 248, 250);
	margin-top: 32px;
	border-top: 1px solid #E9EEF1;
	overflow: hidden;
}

/* .swal-button {
	padding: 7px 19px;
	border-radius: 2px;
	background-color: #4962B3;
	font-size: 12px;
	border: 1px solid #3e549a;
	text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.3);
} */
</style>
</head>
<body>
<h3>数据如下</h3>
<button id="a">点我1</button>
<button id="b">点我2</button>
<script type="text/javascript">
	$(document).ready(function() {
		$("#a").click(function() {
			$("h3").hide();
			swal({
				  title: "Are you sure?",
				  text: "Once deleted, you will not be able to recover this imaginary file!",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
				    swal("Poof! Your imaginary file has been deleted!", {
				      icon: "success",
				    });
				  } else {
				    swal("Your imaginary file is safe!");
				  }
				});
		});
	});
	
	window.onload = function() {
		swal("Click on either the button or outside the modal.")
		.then((value) => {
		  swal(`The returned value is: ${value}`);
		});
	}
	
	$(document).ready(function() {
		$("#b").click(function(){ 
			swal("Type something:", {
				  content: "input",
				  button: {
					    text: "Hey ho!",
					  },
				})
				.then((value) => {
				  swal(`You typed: ${value}`);
				})

		}); 
	});

	
</script>
</body>
</html>