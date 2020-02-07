<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
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

textarea {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=text], select {
	width: 100%;
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

input[name=id] {
	width: 10%;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button[type=button] {
	width: 10%;
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
	<div class="jumbotron text-center" style="background-color: #3C4023;">
      <h1><a style="color: white;" href="blist.do">PROJECT</a></h1>
   </div>
    
<div class="container">
    <form action="breply.do" method="post">
    		<h1 style="color:  #3C4023;">��� �ۼ�</h1>
          <input type="hidden" name="num" value="${num}">
            <label for="id">�ۼ���: </label><input readonly name="id" id="id"
			value="${login.id}"><br> <input type="hidden"
			name="notice" value="${dto.notice }">
                 
			<label for="����">����</label><br> <input type="text" id="title"
			required name="title" value="${dto.title}">

          
         <textarea rows="5" name="content" required placeholder="����">${dto.content}</textarea>
          <br>
          <div class="text-right">
          <a href="blist.do"><button type="button">���</button></a>
          <input type="submit" value="�� ��">
          </div>
    </form>
  </div>

</body>
</html>