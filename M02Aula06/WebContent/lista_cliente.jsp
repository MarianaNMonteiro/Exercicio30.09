<%@page import="java.util.List"%>
<%@page import="m02aula06.basica.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Clientes cadastrados</h1>
	<%
	List<Cliente> lista = (List<Cliente>) request.getAttribute("clientes");
	for(int i=0; i<lista.size(); i++){
		
		out.println("<tr>");
		
		out.println("<td>" + lista.get(i).getNome() +"<td/>");
		out.println("<td>" + lista.get(i).getCpf() + "<td/>");
		out.println("<td>" + lista.get(i).getEmail() + "<td/>");
		out.print("<td><a href='lista_cliente.jsp?excluir=1&id="+ lista.get(i).getNome() +"'>excluir</a>  </td>");
		out.print("<td><a href='lista_cliente.jsp?alterar=1&id="+ lista.get(i).getNome() +"'>alterar</a> </td>");
		out.println("</br>");
		out.println("</tr>");
	
	}
	%>
</body>
</html>