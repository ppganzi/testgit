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
	<h1>���ڼ��� ����</h1>
	num: ${dto.num }<br>
	author: ${dto.author }<br>
	writeday: ${dto.writeday}<br>
	readcnt: ${dto.readcnt }<br>
 	title: ${dto.title }<br>
	content<br>
	<div>
	
	${dto.content }
	
	
	</div>
	<br>
	<a href="replyui.do?num=${dto.num }">���</a>
	<a href="updateui.do?num=${dto.num}">����</a>
	 <a href="delete.do?num=${dto.num }">����</a>
	  <a href="list.do">���</a>



</body>
</html>