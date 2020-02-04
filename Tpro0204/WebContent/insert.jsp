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
<h1>ȸ�����</h1>
<form action="insert.do" method="post">
	ID : <input required name="id"><button>�ߺ�üũ</button><br>
	<p></p> <!-- ajax�� -->
	Name : <input required name="name"><br>
	PW : <input required type="password" name="pw"><br>
	Birthday : <input required name="birthday"><br>
	
	
	<input type="submit" value="���">
</form>
<script type="text/javascript">
	$(document).ready(function() {
		$("button").click(function() {
		var  id = $("input[name='id']").val();	
		
		$.ajax({
			type: 'get',
			url : 'checkid.do',
			data: {
				id : id//������ : ������
			},
			dataType: 'text',
			success : function(result){
				$("p").text(result);
			}
			
		});
		
		});
		
	});
	</script>
</body>
</html>