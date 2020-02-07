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
<style>
body {
   
}
input[type=text], select {
   width: 30%;
   padding: 12px 20px;
   margin: 8px 0;
   display: inline-block;
   border: 1px solid #ccc;
   border-radius: 4px;
   box-sizing: border-box;
}
input[type=date], select {
   width: 30%;
   padding: 12px 20px;
   margin: 8px 0;
   display: inline-block;
   border: 1px solid #ccc;
   border-radius: 4px;
   box-sizing: border-box;
}
input[type=submit] {
   width: 10%;
   background-color: #808080;
   color: white;
   padding: 14px 20px;
   margin: 8px 0;
   border: none;
   border-radius: 4px;
   cursor: pointer;
}
button[type=button] {
   width: 14%;
   background-color: #808080;
   color: white;
   padding: 14px 20px;
   margin: 8px 0;
   border: none;
   border-radius: 4px;
   cursor: pointer;
}
</style>


</head>
<body>

   <div class="jumbotron text-center" style="">
      <h1>ȸ�� ���� ����</h1>
   </div>
   <div class="container">
   <form action="mupdate.do" method="post">
   
      <label for="id">���̵�</label><br>
      <input type="text" readonly name="id" id="id" value="${dto.id}"><br>
      <hr>
      <label for="pw">��й�ȣ</label><br> 
      <input type="text" id="pw" required name="pw" placeholder="��й�ȣ" type="password">
      <hr>
      <label for="name">����</label><br>
      <input type="text" id="name" required name="name" placeholder="����">
      <hr>
      <label for="birth">�������</label><br>
      <input id="birth" required name="birthday" placeholder="������� " type="date">
      <hr>
       
       <c:if test="${login.nKey == 1000 }" >
       ��޺���:
       <select name="nKey">
       <option value="100">������</option>
       <option value="10">ȸ��</option>
       </select>
       <br>
       </c:if>
       <br>
      <input type ="submit" value="����"> 
   
   
   </form>
   </div>
</body>
</html>