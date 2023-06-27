<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>

<!-- Bootstrap -->
<link href="<c:url value='/template/web/css/bootstrap.min.css'/>"
	rel="stylesheet" type="text/css">
<!-- Font Awesome -->
<link href="<c:url value='/template/web/css/font-awesome.min.css'/>"
	rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="<c:url value='/template/web/css/owl.carousel.css'/>"
	rel="stylesheet" type="text/css">
<link href="<c:url value='/template/web/style.css'/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value='/template/web/css/responsive.css'/>"
	rel="stylesheet" type="text/css">
<body>
	<!-- Navigation -->
	<%@ include file="/common/web/header.jsp"%>

	<dec:body />

	<!-- Footer -->
	<%@ include file="/common/web/footer.jsp"%>

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="<c:url value='/template/web/js/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/jquery.sticky.js'/>"></script>

	<!-- jQuery easing -->
	<script
		src="<c:url value='/template/web/js/jquery.easing.1.3.min.js'/>"></script>

	<!-- Main Script -->
	<script src="<c:url value='/template/web/js/main.js'/>"></script>


	<!-- Slider -->
	<script src="<c:url value='/template/web/js/bxslider.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/script.slider.js'/>"></script>

</body>
</html>