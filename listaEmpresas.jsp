<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard TagLib</title>
</head>
<body>
	<a href="entrada?acao=Logout">Logout</a>

	<br>
	<br>
	<br>

	Usuário: ${usuarioLogado.login}
	
	<br>
	<br>
	<br>
	<c:if test="${not empty nomeDaEmpresa}">
		<p> Empresa ${ nomeDaEmpresa } cadastrada com êxito! </p>
	</c:if>
	<p>Lista de Empresas:</p>
	<ul>
		<c:forEach items="${listaDeEmpresas}" var="empresa" > <%//"listaDeEmpresas tirado do arquivo ListaEmpresasServlet.java" %>
			<li>
			${empresa.nome}  <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
			<a href="/gerenciador/entrada?acao=RemoveEmpresas&id=${empresa.id}">Remover</a> <a href="/gerenciador/entrada?acao=MostraEmpresas&id=${empresa.id}">Editar</a>
			</li>
		</c:forEach>
		<a href="/gerenciador/entrada?acao=NovaEmpresaForm">Adicionar nova empresa</a>
	</ul>
</body>
</html>