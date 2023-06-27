<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div>
			<span><h1>Danh sach san pham</h1></span> <span><a
				href='<c:url value="/home/themsp"></c:url>' class="btn btn-info"
				role="button">Them sp</a></span>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Id</th>
					<th>Hãng</th>
					<th>Model</th>
					<th>Giá</th>
					<th>Hinh sp</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${dssp}">
					<tr>
						<td>${item.id }</td>
						<td>${item.hang }</td>
						<td>${item.model }</td>
						<td>${item.price }</td>
						<td><img src="<c:url value='/file/${item.imgUrl }'/>" class="img-thumbnail" alt="Hinh anh cua dien thoai" width="152" height="118"></td>
						<td><a href="#" class="btn btn-info" role="button">Sua sp</a>
							<c:url var="deleteSp" value="/home/deleteSp">
								<c:param name="id" value="${item.id}" />
							</c:url> <a href="${deleteSp}"><button class="btn btn-info"
									onclick="if (!confirm('Are you sure?')) { return false }">
									<i class='far fa-trash-alt' style='font-size: 18px; color: red'></i>
									Xóa sp
								</button></a> <a href="#" class="btn btn-info" role="button">Them hinh
								anh</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>