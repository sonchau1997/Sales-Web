<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Them san pham</h1>
		<form action='<c:url value="/home/themsp"></c:url>' method="post"
			enctype="multipart/form-data">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputHang">Hang</label> <input name="hang" type="text"
						class="form-control" id="inputHang" placeholder="Hang">
				</div>
				<div class="form-group col-md-6">
					<label for="inputModel">Model</label> <input name="model" type="text"
						class="form-control" id="inputModel" placeholder="Model">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPrice">Gia</label> <input name="price" type="text"
					class="form-control" id="inputPrice" placeholder="Gia">
			</div>
			<div class="form-group">
			<label for='inputAnh'>Hinh anh</label>
			<div class="custom-file">
				<input name="fileImg" type="file" class="custom-file-input"
					id="validatedCustomFile"> <label class="custom-file-label"
					for="validatedCustomFile">Choose file...</label>
					<div class="invalid-feedback">Example invalid custom file feedback</div>
			</div>
			</div>
			<button type="submit" class="btn btn-primary">Them</button>
		</form>

		<%-- <form:form method="POST" action="themsp" modelAttribute="sanpham">
             <table>
                <tr>
                    <td><form:label path="hang">Hang</form:label></td>
                    <td><form:input path="hang"/></td>
                </tr>
                <tr>
                    <td><form:label path="model">Model</form:label></td>
                    <td><form:input path="model"/></td>
                </tr>
                <tr>
                    <td><form:label path="price">Gia</form:label></td>
                    <td><form:input path="price"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form> --%>
	</div>
</body>
</html>