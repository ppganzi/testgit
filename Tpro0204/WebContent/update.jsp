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
<h1>ȸ�� ���� ����</h1>
<form action="update.do" method="post">
ID: <input readonly name ="id" value="${dto.id }">
<br>
PW: <input name="pw" value="${ dto.pw }">
<br>
Name: <input name="name" value="${ dto.name }">
<br>
Birthday: <input name="birthday" value="${dto.birthday}" >
<br>


<input type="submit" value="����">
</form>
</body>
</html>