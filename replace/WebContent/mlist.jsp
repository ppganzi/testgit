<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>


<div class="container">
<h1>회원 관리</h1>
  <table class="table table-striped">
    <thead>
      <tr>
        <th>아이디</th>
        <th>이름</th>
        <th>게시글보기</th>
      </tr>
    </thead>
    <tbody>
       <c:forEach items="${list }" var="var">
      <tr>
	<td> <a href="mread.do?id=${var.id}">${var.id }</a></td>  
	<td> ${var.name }</td>
	
	
	<c:if test="${var.nKey !=1001}">
	<td><a href="blist.do?id=${var.id }">게시글보기</a></td>
	</c:if>
</c:forEach>
      </tr>
      
    </tbody>
  </table>
</div>
<div>
<a href="minsertui.do">dd?</a>
<a href="mlist.do">ㄱㄱ</a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>