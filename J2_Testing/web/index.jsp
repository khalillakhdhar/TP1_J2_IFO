<%-- 
    Document   : index
    Created on : 17 nov. 2020, 12:13:05
    Author     : TPC
--%>

<%@page import="classes.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String message="";
            String erreur="";
            String titre="";
            String type="";
            double prix=0;
            int quantite=0;
            double taxes=0;
            double pfinale=0;
        if(request.getParameter("titre")!=null)    
        {
            titre=request.getParameter("titre");
            type=request.getParameter("type");
            prix=Double.parseDouble(request.getParameter("prix"));
            quantite= Integer.parseInt(request.getParameter("quantite"));
            Produit p=new Produit(titre, prix, type, quantite);
            if(p.verifPrix()==false)
            {
                erreur="le prix ne peux pas être négatif ou 0";
            }
            else if(p.verifQuantite()==false)
            {
            erreur="la quantité doit être supérieur à 10";
            }
            else if(p.contenueType()==false)
            {
            erreur="le type doit contenir imp ou exp";
            }
            else
            {
                taxes=p.calculeTaxe();
	pfinale=p.calculePrixFinale();
	message="le taux de taxe est: "+taxes+" le prix finale sera: "+pfinale;
}
            
            
            
            
        }
        %>
        
        
        
        <style>
            
            td
            {
                text-align: center;
            }
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <table align="center"><tr><td colspan="2"><h1>Gestion des produits</h1></td></tr>
            <tr><td>Titre</td><td><input required type="text" name="titre"></td></tr>
            <tr><td>Prix</td><td><input required type="number" name="prix"></td></tr>
            <tr><td>Quantité</td><td><input required type="number" name="quantite"></td></tr>
            <tr><td>Type</td><td><input required type="text" name="type"></td></tr>
            <tr><td colspan="2"><input type="submit" value="calculer"></td></tr>
            <% if(request.getParameter("titre")!=null){ %>
            
            
                    <tr><td colspan="2">
                            <% if(erreur.equals("")) { %>
                            <h5><%= message %> </h5>
                            <% } %>
                            <% if(!erreur.equals("")) { %>
                            <h3><%= erreur %></h3>
                             <% } %>
                            
                </td></tr>
            <% } %>
            </table>
        </form>
        
        
    </body>
</html>
