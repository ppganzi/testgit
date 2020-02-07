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
<h1> 회원 정보 보기</h1>
	
	아 이 디  : ${dto.id}<br>
	이      름 : ${dto.name}<br>
	생년월일 : ${dto.birthday}<br>
	등급정보 : 
	<c:if test="${dto.nKey ==10 }">
	회원 </c:if>
	<c:if test="${dto.nKey ==100 }">매니저</c:if>
	<c:if test="${dto.nKey ==1000 }">경영진</c:if>
	
	<br>
	
	<a href="mupdateui.do?id=${dto.id}">수정</a>
	<c:if test="${login.nKey ==1000}"><a href="mdelete.do?id=${dto.id}">삭제</a></c:if>
	<a href="mlist.do">목록</a>
	<a href="mdeletemaster.do?="${dto.id }"></a>
</body>
</html>