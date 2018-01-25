<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
	
	<h2>자바문법</h2>
	<% 
	UserVo userVo = (UserVo)request.getAttribute("userVo"); //정해져있지 않은 값을 보냄(객체로 받음)
	int num = (int)request.getAttribute("num"); //정해져있지 않은 값을 보냄(int로 받음)
	String str = (String)request.getAttribute("str"); //정해져있지 않은 값을 보냄(String으로 받음)
	%>
	name = <%=userVo.getName()%> <br/>
    email = <%=userVo.getEmail() %> <br/>
    password = <%=userVo.getPassword() %> <br/>
	gender = <%=userVo.getGender() %> <br/> 
	
	num = <%=num %> <br/>
	str = <%=str %>	<br/>
	
	
	
	<h2>el</h2>
	name = ${requestScope.userVo.name } <br/> <!-- servlet에서 값이 결정되어서 jsp파일로 내려보낸 값만을 출력해주는 것임  -->
	email = ${requestScope.userVo.email } <br/> 
	password = ${requestScope.userVo.password } <br/> 
	gender = ${requestScope.userVo.gender } <br/> 
	num = ${requestScope.num } <br/> 
	str = ${requestScope.str } <br/> 
	
</body>
</html>