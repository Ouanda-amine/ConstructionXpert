package org.example.constructionxpert.Model;

public class Tache {
    private int idtache;
    private String description;
    private String datedebut;
    private String datefin;
    private int idpro ;


    public Tache(String description, String datedebut, String datefin ) {
        this.description = description;
        this.datedebut = datedebut;
        this.datefin = datefin;
    }
    public Tache(){}

    public int getIdtache() {
        return idtache;
    }

    public void setIdtache(int idtache) {
        this.idtache = idtache;
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
    public int getIdpro() {
        return idpro;
    }
    public void setIdpro(int idpro) {
        this.idpro = idpro;
    }
}
