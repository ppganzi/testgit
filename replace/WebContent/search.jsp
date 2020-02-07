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
				<li><a href="#">1일</a></li>
				<li><a href="#">1주일</a></li>
				<li><a href="#">1달</a></li>
				<li role="separator" class="divider"></li>
				<li>기간설정</li>
				<li><input type="date" maxlength="10"><input type="date" maxlength="10"></li>
			</ul>
		</div>
		<div class="btn-group">
			<select name="members">
				<option value="id">작성자</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			 <input type="text" name="search" class="form-control"	placeholder="검색하세요.">
		</div>
		<button type="submit" class="btn btn-default">검색</button>
	</form>
</div>

<script src="js/bootstrap.js"></script>
<script src="//code.jquery.com/jquery.min.js"></script>
