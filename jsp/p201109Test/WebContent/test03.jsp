<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 스크립트릿(Scriptlet): JSP 페이지에서 자바 코드를 실행할 때 사용하는 코드 블록
	// 서버 쪽에서 실행된다. 웹에서 페이지 소스를 확인했을 때 나타나지 않는다.
	int a = (int)(Math.random() * 10);
	if (a > 5) {
		out.println("Hello");    // response.getWriter().println("Hello");
	} else {
		out.println("안녕하세요");
	}
%>
</body>
</html>