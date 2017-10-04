<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Liste JSP</h1>
<%@ page import="java.util.ArrayList" %>
<%@ page import="co.simplon.poleEmploi.decouverte.jsp.*"%>

<%	ArrayList<Personne> couple = (ArrayList<Personne>)request.getAttribute("couple");
	for (Personne individu : couple){ %>
 		(for) ==>&nbsp;&nbsp;<%=individu.getNom()%> <%=individu.getPrenom()%><br>
<%	}%>

<h1>Liste en JSPL</h1>
<c:forEach var="individu" items="${couple}" >
	(forEach) ==>&nbsp;<c:out value="${individu.nom}"/> <c:out value="${individu.prenom}"/><br>
</c:forEach>


<h1>Liste manuelle</h1>
${couple[0].nom} ${couple[0].prenom}<br>
${couple[1].nom} ${couple[1].prenom}<br><br>
Vous naviguez avec ${header["user-agent"]}
<p>Adresse Ip : ${ip}
</body>
</html>