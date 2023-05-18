<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
    
<%
	HttpSession sesionOk = request.getSession();
	sesionOk.invalidate();
%>
<jsp:forward page="login.jsp"/>