<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>





<br>
<div class="container">
	<form class="navber-form navbar-left" action="search.do" method="post">

		<div class="btn-group">
			<button type="button" class="btn btn-default dropdown-toggle"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">1��</a></li>
				<li><a href="#">1����</a></li>
				<li><a href="#">1��</a></li>
				<li role="separator" class="divider"></li>
				<li>�Ⱓ����</li>
				<li><input type="date" maxlength="10"><input type="date" maxlength="10"></li>
			</ul>
		</div>
		<div class="btn-group">
			<select name="members">
				<option value="id">�ۼ���</option>
				<option value="title">����</option>
				<option value="content">����</option>
			</select>
			 <input type="text" name="search" class="form-control"	placeholder="�˻��ϼ���.">
		</div>
		<button type="submit" class="btn btn-default">�˻�</button>
	</form>
</div>

<script src="js/bootstrap.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
