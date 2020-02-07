<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	 <div class="jumbotron text-center" style="background-color: #3C4023;">
      <h1><a style="color: white;" href="blist.do">PROJECT</a></h1>
   </div>
		<nav class="navbar navbar-dark" style="background-color: #3C4023;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Home</a>
			</div>
			<ul class="nav navbar-nav" >
				<li class="active"><a style="color: white;" href="#">Home</a></li>
				<li class="dropdown"><a style="color: white;" class="dropdown-toggle"
					data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
					<ul style="color: white;" class="dropdown-menu">
						<li><a href="blist.do">게시판</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#"><jsp:include page="header.jsp" /></a></li>
					</ul></li>
				<li><a style="color: white;" href="#">Page 2</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="minsertui.do" style="color: white;"><span
						class="glyphicon glyphicon-user"></span> 회원가입</a></li>
				<li><form action="mlogin.do" method="post">
				<span style ="color: white;">
				ID: <input name="id" required style="margin-top: 12px; background-color: #f2f2f2;">
				PW: <input name="pw" type="password" required style="margin-top: 12px; background-color: #f2f2f2;">
				</span  >
				<a href="#" class="glyphicon glyphicon-log-in"
				style="padding:0px; border:0px; color: white; height:20px"><input style="background-color: #3C4023 ; border:0px;padding:0px; color: white;" type="submit" value="Login"></a>
				
					</form></li>
				
				
				
			</ul>
		</div>
	</nav>
	<div class="text-right">
	
	</div>
	
	<h1 style="text-align: center; color:  #6C7336;">게시판</h1>
	<div class="container">
		<table class="table table-striped table-hover " style="">
			<thead>
				<tr style="background-color: #6C7336">
					<th style="width: 5%;">NO.</th>
					<th>&nbsp;제목</th>
					<th>작성자</th>
					<th style="text-align: center;">작성일</th>
					<th style="text-align: center;">조회수</th>
					<c:if test="${login.nKey >=100 }">
						<th style="text-align: center;">삭제</th>
					</c:if>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${list }" var="dto">
					<tr class="active">
						<td style="background-color:  #8C7F77; color: white">${dto.num }</td>
						<td><a href="bread.do?num=${dto.num }"> <c:forEach
									begin="1" end="${dto.repIndent }">
            &nbsp; </c:forEach> ${dto.title }
						</a></td>
						<td>${dto.id }</td>
						<td style="text-align: center;">${dto.writeday }</td>
						<td style="text-align: center;">${dto.readcnt }</td>
						<c:if test="${login.nKey >=100 }">
							<td style="text-align: center;"><a href="bdelete.do?id=${dto.num }">삭제</a></td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<div class="text-right">
		<button type="button" onclick="location.href='binsertui.do'"
			class="btn btn-default" 
			style="background-color: black; color: white;">글쓰기</button>
			</div>
	</div>

	<jsp:include page="page.jsp" />
	<jsp:include page="search.jsp" />
</body>
</html>