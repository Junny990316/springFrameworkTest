<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>사용자 관리</title>
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>
	<div class="container">
		<h2 class="text-center">도서 목록</h2>
		<table class="table table-bordered table table-hover"> 
			<thead> 
				<tr> 
					<th>제목</th> 
					<th>작가</th> 
					<th>장르</th>
				</tr> 
		</thead> 
		<tbody> 
			<c:forEach var="book" items="${bookList}">
				<tr>
					<td>
					 	<a href="getBook.do?id=${book.id}">${book.id}</a>
					 </td>
					<td>${book.title}</td>
					<td>${book.author}</td>
					<td>${book.genre}</td>
					<td>
					     <a href="updateBookForm.do?id=${book.id}">수정</a>
					</td>
					<td><a href="#" onclick="deleteBook('${book.id}')">삭제</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="7">
					<a href="insertBookForm.do">도서 등록</a>
				</td>
			</tr>
		</tbody> 
	</table>
	</div>
</body>
</html>

































