<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "pf.integrador.java.MySqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CargaForm</title>
</head>
<body>

<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	
	String sql = "INSERT INTO ticket(nombre, apellido, mail, cantidad, categoria) VALUES('"+nombre+"','"+apellido+"', '"+mail+"', '"+cantidad+"', '"+categoria+"')";
	
	//out.print(nombre+apellido+mail+cantidad+categoria);
	
	//MySqlConexion conexion = new MySqlConexion();
	
	Connection cn = MySqlConexion.conectar();
	
	try{
		Statement stm = cn.createStatement();
		
		stm.executeUpdate(sql);
	}catch(Exception e){
		out.println("No se enviaron los datos");
		e.printStackTrace();
	}
	
%>

<jsp:include page = "tickets.jsp"></jsp:include>

</body>
</html>