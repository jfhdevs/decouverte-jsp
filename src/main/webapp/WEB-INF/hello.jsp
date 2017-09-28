<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Hello :
<%@ page import="java.util.ArrayList" %>
<%@ page import="co.simplon.poleEmploi.decouverte.jsp.*"%>

<%	ArrayList<Personne> couple = (ArrayList<Personne>)request.getAttribute("couple");
	for (Personne individu : couple){ %>
 		<br>&nbsp;&nbsp;<%=individu.getNom()%> <%=individu.getPrenom()%>
<%	}%>


<!-- <c:forEach var="individu" items=${couple} > -->
<%-- 	<p> <c:out value="${individu.nom}"/> <c:out value="${individu.prenom}"/> --%>
<!-- </c:forEach> -->
</h1>
<h4>Hello ${couple[0].nom} ${couple[0].prenom}</h4>
<h4>Hello ${couple[1].nom} ${couple[1].prenom}</h4>
Vous naviguez avec ${header["user-agent"]}
<p>Adresse Ip : ${ip}
</body>
</html>