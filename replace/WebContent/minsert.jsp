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
<style>
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
   width: 100%;
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
table{
   text-align: center;
 }
 td{
   width: 300px;
   height: 100px;
   border: 5px solid;
 }
</style>

</head>
<body>

   <div class="jumbotron text-center" style="background-color: #3C4023;">
      <h1>
         <a style="color: white;" href="blist.do">PROJECT</a>
      </h1>
   </div>
   <hr>

   <div class="container">
      <h2>ȸ�� ����</h2>
      <hr>
      
      <form action="minsert.do" method="post">
      <table class="table table-striped">
         <thead>
            <tr style="background-color: #6C7336;">
               <th>����</th>
               <th>����</th>
            </tr>
         </thead>
         <tbody>
            <tr class="active">
               <td style="background-color: #8C7F77; color: white">���̵�</td>
               <td>
               <input type="text" id="id" required placeholder="���̵�" name="id">
               <button type="button">�ߺ� Ȯ��</button>
               <p></p>   
               </td>
            </tr>
            <tr class="active">
               <td style="background-color: #8C7F77; color: white">��й�ȣ</td>
               <td>
               <input type="text" id="pw" required placeholder="��й�ȣ" name="pw">
               </td>
            </tr>
            <tr class="active">
               <td style="background-color: #8C7F77; color: white">����</td>
               <td>
               <input type="text" id="name" required placeholder="name"
                        name="name">
               </td>
            </tr>
            <tr class="active">
               <td style="background-color: #8C7F77; color: white">�������</td>
               <td>
               <input id="birth" required placeholder="�������"
                        type="date" name="birthday">
               </td>
            </tr>
         </tbody>
      </table>
       <input name="nkey" type="hidden" value="10">
      <input type="submit" value="���" class="btn btn-dark">
      </form>
   </div>


   <script type="text/javascript">
      $(document).ready(function() {

         $("button").click(function() {
            var id = $("input[name='id']").val();

            $.ajax({
               type : 'get',
               url : 'mCheckId.do',
               data : {
                  id : id
               },
               dataType : 'text',
               success : function(result) {
                  $("p").text(result);
               }
            });
         });

      });
   </script>
</body>
</html>