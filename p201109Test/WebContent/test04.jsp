<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
    
<%
	int a= 10;
	out.println(a);
	this.test();
%>

<%!
	// 선언부(declaration)
	private int b = 20;    // 위험한 코드            
	public void test() {
		System.out.println("!!!!");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>    
	<% 
		// out.println("반갑습니다");
	%>
	
	<%
		out.println(a);
		out.println(c);
	%>	
	<%!
		int c = 20;
	%>
	
	<%-- JSP 주석 --%>
	<%-- 표현식 --%>
	<%= a %>   
	<%= "안녕하세요" + a %>
	
	<%
		Scanner scn = null;
	%>
</body>
</html>