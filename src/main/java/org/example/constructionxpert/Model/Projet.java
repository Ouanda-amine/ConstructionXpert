package org.example.constructionxpert.Model;

public class Projet {

    private int idpro ;
    private String nomprojet ;
    private String description ;
    private String datedebut ;
    private String datefin  ;
    private double budget ;

    public Projet(String nomprojet, String description, String datedebut, String datefin, double budget) {
        this.nomprojet = nomprojet;
        this.description = description;
        this.datedebut = datedebut;
        this.datefin = datefin;
        this.budget = budget;
    }
    public  Projet() {}

    public int getIdpro() {
        return idpro;
    }

    public void setIdpro(int idpro) {
        this.idpro = idpro;
    }

    public String getNomprojet() {
        return nomprojet;
    }

    public void setNomprojet(String nomprojet) {
        this.nomprojet = nomprojet;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDatedebut() {
        return datedebut;
    }

    public void setDatedebut(String datedebut) {
        this.datedebut = datedebut;
    }

    public String getDatefin() {
        return datefin;
    }

    public void setDatefin(String datefin) {
        this.datefin = datefin;
    }

    public double getBudget() {
        return budget;
    }

    public void setBudget(double budget) {
        this.budget = budget;
    }
}
