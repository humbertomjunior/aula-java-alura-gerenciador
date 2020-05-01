<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<c:if test="${not empty nomeDaEmpresa}">
			<p> Empresa ${ nomeDaEmpresa } cadastrada com �xito! </p>
		</c:if>
		<c:if test="${empty nomeDaEmpresa}">
			<p> Nenhuma empresa cadastrada. </p>
		</c:if>
	</body>
</html>

