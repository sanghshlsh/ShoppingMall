<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/admin/main">Admin Page</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
			<c:choose>
			<c:when test="${sessionScope.memberId == null }">
				<li><a href="/member/login.do"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="/member/logout.do"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</c:otherwise>
		</c:choose>
				<li><a href="#">Settings</a></li>
				<li><a href="#">Help</a></li>
			</ul>
		</div>
	</div>
</nav>