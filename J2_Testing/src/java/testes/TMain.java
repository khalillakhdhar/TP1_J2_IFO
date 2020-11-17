package testes;

import classes.Produit;

public class TMain {

	
	
	public static void main(String[] args) {
Produit p=new Produit("voitures",10000,"imp fiat",20);
double taxes=0;
double pfinale=0;
if(p.verifPrix()==false)
{
System.out.println("le prix ne peux pas être n�gatif ou 0");

}
else if(p.verifQuantite()==false)

System.out.println("la quantité ne peut pas être inférieur à 10!");	


else if(p.contenueType()==false)
	System.out.println("le type doit contenir imp ou exp");
else
{
	taxes=p.calculeTaxe();
	pfinale=p.calculePrixFinale();
	System.out.println("le taux de taxe est: "+taxes+" le prix finale sera: "+pfinale);
}
		
		

	}

}
