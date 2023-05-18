package com.producto.seguridad;
import com.producto.datos.*;
import java.sql.*;

public class Usuario 
{
	private String nombre, direccion, login, clave;
	private int perfil;
	
	public boolean verificarUsuario(String nlogin, String nclave) {
		boolean respuesta=false;
		String sentencia= "Select * from tb_usuario where login_us='"+nlogin+
		"' and clave_us='"+nclave+"';";
		//System.out.print(sentencia);
		try {
			ResultSet rs;
			Conexion clsCon=new Conexion();
			rs=clsCon.Consulta(sentencia);
			if(rs.next()){
				respuesta=true;
				this.setLogin(nlogin);
				this.setClave(nclave);
				this.setPerfil(rs.getInt(6));
				this.setNombre(rs.getString(2));
			} else {
				respuesta=false;
				rs.close();
			}
		} catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return respuesta;
	}

	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}

	public int getPerfil() {
		return perfil;
	}
	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
}