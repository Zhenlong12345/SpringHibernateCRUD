<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 加上這個 c set 設置contextroot -->
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Employee Management</title>

<script>
	window.contextRoot = '${contextRoot}';
</script>
<!-- 
Q1:how to mapping assets?

jquery data tabel:
1. add css and js files into assets and <include into page.
2. create own myapp.js file to customize columns of table.
3. controller pass data to jquery data table.(by using ajax).
4. controller should be a rest controller fetcher pass an api to ajax.
 -->
 <!-- jquery datatable css file -->
 <link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Bootstrap core CSS-->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/scrolling-nav.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- navigation -->
	<%@include file="./shared/nav.jsp"%>
	<%@include file="./shared/header.jsp"%>
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

	<script src="${js}/jquery.min.js"></script>
	<!-- datatable bootstrap js-->
	<script src="${js}/dataTables.bootstrap4.js"></script>
	
	<!-- jquery datable js -->
	<script src="${js}/jquery.dataTables.js"></script>
	<!-- Bootstrap core JavaScript-->
	<script src="${js}/myapp.js"></script>

	
	<script src="${js}/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="${js}/jquery.easing.min.js"></script>

	<!-- Custom JavaScript for this theme -->
	<script src="${js}/scrolling-nav.js"></script>
	
	
	
</body>

</html>
