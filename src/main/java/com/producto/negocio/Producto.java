package com.producto.negocio;
import com.producto.datos.*;
import java.sql.*;

public class Producto {
	private int id_pr, id_cat, cantidad_pr;
	private String descripcion_pr;
	private float precio_pr;
	
	public Producto() {	}
	
	public Producto(int id_pr, String descripcion_pr, float precio_pr, int cantidad_pr) {
		this.setId_pr(id_pr);
		this.setDescripcion_pr(descripcion_pr);
		this.setPrecio_pr(precio_pr);
		this.setCantidad_pr(cantidad_pr);
	}
	
	public String consultarTodo() {
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
		while(rs.next()) {
			tabla+="<tr><td>"+rs.getInt(1)+"</td>"
			+ "<td>"+rs.getString(3)+"</td>"
			+ "<td>"+rs.getInt(4)+"</td>"
			+ "<td>"+rs.getDouble(5)+"</td>"
			+ "</td></tr>";
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	public String buscarProductoCategoria(int cat) {
		String sentencia="SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try {
			rs=con.Consulta(sentencia);
		while(rs.next()) {
			resultado+="<tr><td>"+ rs.getString(1)+"</td>"
			 + "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e) {
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	
	public String consultarProducto(String cod) {
		String tabla = "<table border=1";
		String sql = "select id_pr, descripcion_pr, precio_pr, cantidad_pr"
				+ "from tb_producto where id_cat =" + cod + "";
		ResultSet rs = null;
		tabla += "<tr>"
				+ "<th>Codigo</th>"
				+ "<th>Descripcion</th>"
				+ "<th>Precio</th>"
				+ "<th>Cantidad</th>"
				+ "</tr>";
		Conexion con = new Conexion();
		try {
			rs = con.Consulta(sql);
			
			while (rs.next()) {
				tabla += "<tr>"
						+ "<td><pre style=\"text_align: center\">" + rs.getInt(1) + "</pre></td>"
						+ "<td><pre style=\"text_align: center\">" + rs.getString(2) + "</pre></td>"
						+ "<td><pre style=\"text_align: center\">" + rs.getFloat(3) + "</pre></td>"
						+ "<td><pre style=\"text_align: center\">" + rs.getInt(4) + "</pre></td>"
						+ "<td> <a href= session/BuscarProducto.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td> <a href= session/EliminarProducto.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
						+ "</tr>";
			}
			tabla += "</table>";
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return tabla;
	}
	
	public String consultart() {
		String tabla = "<table border=1";
		String sql = "SELECT id_pr, descripcion_pr, precio_pr, cantidad_pr FROM tb_producto ORDER BY id_pr";
		ResultSet rs = null;
		tabla += "<tr>"
				+ "<th>Codigo</th>"
				+ "<th>Descripcion</th>"
				+ "<th>Precio</th>"
				+ "<th>Cantidad</th>"
				+ "</tr>";
		Conexion con = new Conexion();
		try {
			rs = con.Consulta(sql);
			
			while (rs.next()) {
				tabla += "<tr>"
						+ "<td><pre style=\"text_align: center\">" + rs.getInt(1) + "</pre></td>"
						+ "<td><pre style=\"text_align: center\">" + rs.getString(2) + "</pre></td>"
						+ "<td><pre style=\"text_align: center\">" + rs.getFloat(3) + "</pre></td>"
						+ "<td><pre style=\"text_align: center\">" + rs.getInt(4) + "</pre></td>"
						+ "<td> <a href= session/BuscarProducto.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td> <a href= session/EliminarProducto.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
						+ "</tr>";
			}
			tabla += "</table>";
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return tabla;
	}
	
	public void ConsultarEditarProductos(int cod) {
		Conexion con = new Conexion();
		ResultSet rs = null;
		String sql = "select id_pr, id_cat, descripcion_pr, precio_pr, cantidad_pr "
				+ "from tb_producto where id_pr='" + cod +"'";
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				setId_pr(rs.getInt(1));
				setId_cat(rs.getInt(2));
				setDescripcion_pr(rs.getString(3));
				setPrecio_pr(rs.getFloat(4));
				setCantidad_pr(rs.getInt(5));
			}
		} catch(Exception e) { }
	}
	
	public boolean ModificarProducto(Producto mp) {
		boolean agregado = false;
		Conexion con = new Conexion();
		String sql = "update tb_producto set descripcion_pr='" + mp.getDescripcion_pr() + "', precio_pr = " + mp.getPrecio_pr() + ", "
				+ "cantidad_pr = " + mp.getCantidad_pr() + " where id_pr = " + mp.getId_pr() + "";
		try {
			con.Ejecutar(sql);
			agregado = true;
		} catch(Exception e) {
			agregado = false;
		}
		return agregado;
	}
	
	public boolean EliminarProducto (int cod) {	
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_producto where id_producto='"+ cod +"'";
		
		try {
			con.Ejecutar(sql);
			f = true;
		} catch (Exception e) {
			f = false;
		}
		return f;
	}

	public int getId_pr() {
		return id_pr;
	}

	public void setId_pr(int id_pr) {
		this.id_pr = id_pr;
	}

	public int getId_cat() {
		return id_cat;
	}

	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}

	public int getCantidad_pr() {
		return cantidad_pr;
	}

	public void setCantidad_pr(int cantidad_pr) {
		this.cantidad_pr = cantidad_pr;
	}

	public String getDescripcion_pr() {
		return descripcion_pr;
	}

	public void setDescripcion_pr(String descripcion_pr) {
		this.descripcion_pr = descripcion_pr;
	}

	public float getPrecio_pr() {
		return precio_pr;
	}

	public void setPrecio_pr(float precio_pr) {
		this.precio_pr = precio_pr;
	}
}