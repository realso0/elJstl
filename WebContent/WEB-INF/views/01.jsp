<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터형</title>
</head>
<body>
	<h1>데이터형</h1>
	<p>
	
	<!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
	정수형: ${10 } <br/>
	실수형: ${7.5 } <br/>
	문자형: ${"소한준" } <br/>
	논리형: ${true } <br/>
	null: ${null } <br/> <!-- null일 때는 값이 없는 것처럼 출력 안 함. -->
	</p>
</body>
</html>