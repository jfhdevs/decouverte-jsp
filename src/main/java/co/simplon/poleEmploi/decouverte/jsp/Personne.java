package co.simplon.poleEmploi.decouverte.jsp;

public class Personne {
	private String nom;
	private String prenom;

//	Constructeurs
	public Personne()							{ this.prenom = "!"; this.nom = "World"; }
	public Personne(String nom, String prenom)	{ this.prenom = prenom; this.nom = nom; }
	
//	Getteurs
	public String getNom()		{ return nom; }
	public String getPrenom()	{ return prenom; }
	
//	Setteurs
	public void setNom(String nom)			{ this.nom = nom; }
	public void setPrenom(String prenom)	{ this.prenom = prenom; }
	
	
} // class Personne
