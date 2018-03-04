<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>SB Admin - Start Bootstrap Template</title>

<script>
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS-->
<link href="${css }/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="${css }/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!-- Page level plugin CSS-->
<link href="${css }/dataTables.bootstrap4.css" rel="stylesheet">
<!-- Custom styles for this template-->
<link href="${css }/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- navigation -->
	<%@include file="./shared/nav.jsp"%>
	<!-- main body -->
	<c:if test="${userClickHome ==true }">
		<%@include file="home.jsp"%>
	</c:if>
	<c:if test="${userClicklistall ==true }">
		<%@include file="listall.jsp"%>
	</c:if>
	<c:if test="${userClicknew ==true }">
		<%@include file="new.jsp"%>
	</c:if>
	
	<!-- /.content-wrapper-->
	<%@include file="./shared/footer.jsp"%>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fa fa-angle-up"></i>
	</a>
	<!-- Logout Modal-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="${js}/jquery.easing.min.js"></script>
	<!-- Page level plugin JavaScript-->
	<script src="${js}/Chart.min.js"></script>
	<script src="${js}/jquery.dataTables.js"></script>
	<script src="${js}/dataTables.bootstrap4.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="${js}/sb-admin.min.js"></script>
	<!-- Custom scripts for this page-->
	<script src="${js}/sb-admin-datatables.min.js"></script>
	<script src="${js}/sb-admin-charts.min.js"></script>
	</div>
</body>

</html>
