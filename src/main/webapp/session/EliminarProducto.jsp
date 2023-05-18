<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*" session="true"%>

<%    
	int cod = Integer.parseInt (request.getParameter("cod"));
	Producto mp = new Producto();
	boolean f = mp.EliminarProducto(cod);
	if(f == true){
		response.sendRedirect("categoria.jsp");
	}
%>