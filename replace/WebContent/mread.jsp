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
<h1> ȸ�� ���� ����</h1>
	
	�� �� ��  : ${dto.id}<br>
	��      �� : ${dto.name}<br>
	������� : ${dto.birthday}<br>
	������� : 
	<c:if test="${dto.nKey ==10 }">
	ȸ�� </c:if>
	<c:if test="${dto.nKey ==100 }">�Ŵ���</c:if>
	<c:if test="${dto.nKey ==1000 }">�濵��</c:if>
	
	<br>
	
	<a href="mupdateui.do?id=${dto.id}">����</a>
	<c:if test="${login.nKey ==1000}"><a href="mdelete.do?id=${dto.id}">����</a></c:if>
	<a href="mlist.do">���</a>
	<a href="mdeletemaster.do?="${dto.id }"></a>
</body>
</html>