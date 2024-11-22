<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- fmt 태그 추가 -->

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Review</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.container {
	background-color: #ffffff;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h3 {
	color: #007bff;
	margin-bottom: 30px;
	font-weight: bold;
}

.table th, .table td {
	vertical-align: middle;
}

th, td {
	text-align: center;
}

th.notice_seq_no, td.notice_seq_no, th.notice_target, td.notice_target,
	th.status, td.status {
	width: 80px;
}

th.notice_title, td.notice_title {
	width: 300px;
}

th.notice_regist_date, td.notice_regist_date {
	width: 150px;
}

th.notice_manage, td.notice_manage {
	width: 150px;
}

.btn-custom {
	font-size: 14px;
	border-radius: 5px;
}

.btn-warning {
	background-color: #f0ad4e;
	border: none;
}

.btn-warning:hover {
	background-color: #ec971f;
}

.btn-success {
	background-color: #5bc0de;
	border: none;
}

.btn-success:hover {
	background-color: #31b0d5;
}

.btn-danger {
	background-color: #d9534f;
	border: none;
}

.btn-danger:hover {
	background-color: #c9302c;
}

.table th {
	background-color: #007bff;
	color: #ffffff;
}

.table-striped tbody tr:nth-child(odd) {
	background-color: #f2f2f2;
}
</style>
</head>
<body>
	<div class="container">
		<h3 class="my-4">리뷰 전체</h3>
		<table class="table table-bordered table-striped">
		 <form action="${pageContext.request.contextPath}/review/create" method="post">
			<thead>
				<tr>
					<th class="review_seq_no">일련 번호</th>
					<th class="goods_code">상품 코드</th>
					<th class="notice_title">제목</th>
					<th class="regist_date">등록일</th>
					<th class="status">상태</th>
					<th class="review_manage">관리</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${empty review}">
					<tr>
						<td colspan="6" class="text-center">검색 결과가 없습니다.</td>
					</tr>
				</c:if>
				
				<c:forEach var="review" items="${review}">
					<tr>
						<td class="review_seq_no">${review.seq_no}</td>
						<td class="notice_title">${review.notice_title}</td>
						<td class="regist_date">
							<!-- 날짜 포맷 변경 --> <fmt:parseDate var="parsedDate"
								value="${review.regist_date}" pattern="yyyy-MM-dd HH:mm:ss" />
							<fmt:formatDate value="${parsedDate}" pattern="yyyy-MM-dd" />
						</td>
						<td class="status">${review.status == 1 ? '활성화' : '비활성화'}</td>
						<td class="review_manage"><a
							class="btn btn-warning btn-custom"
							href="${pageContext.request.contextPath}/review/detail?seq_no=${review.seq_no}">상세</a>
							<a class="btn btn-success btn-custom"
							href="${pageContext.request.contextPath}/review/update?seq_no=${review.seq_no}">수정</a>
							<a class="btn btn-danger btn-custom"
							href="${pageContext.request.contextPath}/review/delete?seq_no=${review.seq_no}">비활</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
