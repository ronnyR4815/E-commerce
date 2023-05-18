<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*" session="true"%>
    
<%
	int cod = Integer.parseInt(request.getParameter("codigo"));
	String des = request.getParameter("descripcion");
	float pre = Float.parseFloat(request.getParameter("precio"));
	int can = Integer.parseInt(request.getParameter("cantidad"));
	Producto mp = new Producto(cod, des, pre, can);
	boolean actualizado = mp.ModificarProducto(mp);
	if(actualizado)
		response.sendRedirect("../categoria.jsp");
	else
		out.println("ERROR");
%>