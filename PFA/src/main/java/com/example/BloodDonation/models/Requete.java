package com.example.BloodDonation.models;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;

@Table
@Entity

public class Requete implements Serializable {
    @Id
    @SequenceGenerator(name = "requete_sequence",
            sequenceName = "requete_sequence",
            allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO,
            generator = "requete_sequence")
    private Long idRequete;
    private String adresse;
    private String telephone;
    private String description;
    private LocalDate date;
    @ManyToOne()
    @JoinColumn(name = "type_de_sang", referencedColumnName = "type")
    private Sang sang;
    @ManyToOne()
    @JoinColumn(name = "createur_de_requete", referencedColumnName = "nom")
    private Beneficaire beneficaire;

    public Requete() {}

    public Requete(Long idRequete,
                   String adresse,
                   String telephone,
                   String description,
                   LocalDate date,
                   Sang sang,
                   Beneficaire beneficaire) {
        this.idRequete = idRequete;
        this.adresse = adresse;
        this.telephone = telephone;
        this.description = description;
        this.date = date;
        this.sang = sang;
        this.beneficaire = beneficaire;
    }

    public Requete(String adresse,
                   String telephone,
                   String description,
                   LocalDate date,
                   Sang sang,
                   Beneficaire beneficaire) {
        this.adresse = adresse;
        this.telephone = telephone;
        this.description = description;
        this.date = date;
        this.sang = sang;
        this.beneficaire = beneficaire;
    }

    public Long getIdRequete() {
        return idRequete;
    }

    public void setIdRequete(Long idRequete) {
        this.idRequete = idRequete;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Sang getSang() {return sang;}

    public void setSang(Sang sang) {this.sang = sang;}

    public Beneficaire getBeneficaire() {return beneficaire;}

    public void setBeneficaire(Beneficaire beneficaire) {this.beneficaire = beneficaire;}
}


