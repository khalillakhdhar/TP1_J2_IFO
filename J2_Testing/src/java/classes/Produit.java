package classes;

public class Produit {
private String titre;
private double prix;
private String type;
private int quantite;
public String getTitre() {
	return titre;
}
public void setTitre(String titre) {
	this.titre = titre;
}
public double getPrix() {
	return prix;
}
public void setPrix(double prix) {
	this.prix = prix;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public int getQuantite() {
	return quantite;
}
public void setQuantite(int quantite) {
	this.quantite = quantite;
}
public Produit(String titre, double prix, String type, int quantite) {
	super();
	this.titre = titre;
	this.prix = prix;
	this.type = type;
	this.quantite = quantite;
}
public Produit() {
	super();
}

public boolean verifPrix()
{
	
return this.prix>0;
}
public boolean verifQuantite()
{
	
return this.quantite>10;
}
public boolean contenueType()
{
if(this.type.contains("exp")||(this.type.contains("imp")))
{
return true;	
}
else return false;

}
public double calculeTaxe()
{
if(this.type.contains("exp"))
	return this.prix*0.10;
else
	return this.prix*0.19;


}
public double calculePrixFinale()
{
return (this.prix+calculeTaxe())*this.quantite;	

}


}
