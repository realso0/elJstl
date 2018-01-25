<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List" %>
<%@ page import="vo.UserVo" %>


<% 
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사용자 리스트</h1>
	
	<table border=1>
		<tr>
			<td>no</td><td>name</td><td>email</td>
		</tr>
	
		<% for(UserVo userVo : userList) { %>
			<tr>
				<td><%=userVo.getNo() %></td>
				<td><%=userVo.getName() %></td>
				<td><%=userVo.getEmail() %></td>
			</tr>
		<% } %>
	</table>	
	<br/>
	<table border=1>
		<tr>
			<td>no</td><td>name</td><td>email</td>
		</tr>
		<c:forEach items="${requestScope.userList}" var="list" varStatus="status">
			<tr>
				<td>${status.index }</td> <!-- 중간에 값이 빠지면 5다음 6 -->
				<td>${status.count }</td>
				<td>${list.no }</td> <!-- 중간에 값이 빠지면 5다음 7 -->
				<td>${list.name }</td>
				<td>${list.email }</td>
			</tr>
		</c:forEach>
	
	</table>
	
	
	
	
	
	
	

</body>
</html>