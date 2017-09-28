package co.simplon.poleEmploi.decouverte.jsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String messageGet;
	public void init() throws ServletException {
		messageGet = "Hello ";
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String message = messageGet;
		String parametre = request.getParameter("nom");
		if (parametre != null) {
			message += parametre;
		} else {
			message += "World";
		}

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.println("<h1>" + message + "</h1>");
	} // doGet

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Personne individu = new Personne(request.getParameter("nom").toUpperCase(), request.getParameter("prenom"));
		Personne conjoint = new Personne(request.getParameter("nom").toUpperCase(), request.getParameter("conjoint"));
		if (individu.getNom().equals("")) {
			individu.setNom("World");
			individu.setPrenom("!");
			conjoint.setNom("World");
			conjoint.setPrenom("!!");
		}
		ArrayList<Personne> couple = new ArrayList<Personne>();
		couple.add(individu);
		couple.add(conjoint);
		request.setAttribute("ip", request.getRemoteHost());
		request.setAttribute("couple", couple);
		request.getRequestDispatcher("WEB-INF/hello.jsp").forward(request, response);
	} // doPost

	public void destroy() {

	}
}
