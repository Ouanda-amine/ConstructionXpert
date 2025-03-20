package org.example.constructionxpert.Model;

public class Ressources {
    private int idres;
    private String nomres;
    private String type;
    private int quantite;
    private String nomfournisseur;
    private String localfournisseur;

    public Ressources(int idres ,String nomres, String type, int quantite, String nomfournisseur, String localfournisseur) {
        this.idres = idres;
        this.nomres = nomres;
        this.type = type;
        this.quantite = quantite;
        this.nomfournisseur = nomfournisseur;
        this.localfournisseur = localfournisseur;
    }

    public Ressources(String nomres, String type, int quantite, String nomfournisseur, String localfournisseur) {
        this.nomres = nomres;
        this.type = type;
        this.quantite = quantite;
        this.nomfournisseur = nomfournisseur;
        this.localfournisseur = localfournisseur;
    }

    public Ressources() {}

    public int getIdres() {
        return idres;
    }

    public void setIdres(int idres) {
        this.idres = idres;
    }

    public String getNomres() {
        return nomres;
    }

    public void setNomres(String nomres) {
        this.nomres = nomres;
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

    public String getNomfournisseur() {
        return nomfournisseur;
    }

    public void setNomfournisseur(String nomfournisseur) {
        this.nomfournisseur = nomfournisseur;
    }

    public String getLocalfournisseur() {
        return localfournisseur;
    }

    public void setLocalfournisseur(String localfournisseur) {
        this.localfournisseur = localfournisseur;
    }
}
