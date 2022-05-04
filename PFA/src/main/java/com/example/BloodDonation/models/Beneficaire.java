package com.example.BloodDonation.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.io.Serializable;

@Table
@Entity

public class Beneficaire implements Serializable {
    @Id
    @SequenceGenerator(name = "beneficaire_sequence",
    sequenceName ="beneficaire_sequence", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO,
    generator = "beneficaire_sequence")
    private Long idBeneficaire;
    private String nom;
    private String mail;
    private String telephone;
    private String password;
    private String imageURL;
    private String adresse;
    private Boolean doneur;
    @ManyToOne()
    @JoinColumn(name = "type_de_sang",referencedColumnName = "type")
    private Sang sang;

    public Beneficaire(String nom,
                       String mail,
                       String telephone,
                       String password,
                       String imageURL,
                       Boolean doneur,
                       Sang sang) {
        this.idBeneficaire = idBeneficaire;
        this.nom = nom;
        this.mail = mail;
        this.telephone = telephone;
        this.password = password;
        this.imageURL = imageURL;
        this.adresse = adresse;
        this.doneur = doneur;
        this.sang=sang;
    }

    public Beneficaire() {
    }

    public Beneficaire(String nom,
                       String mail,
                       String telephone,
                       String password,
                       String imageURL,
                       String adresse,
                       Boolean doneur,
                       Sang sang) {
        this.nom = nom;
        this.mail = mail;
        this.telephone = telephone;
        this.password = password;
        this.imageURL = imageURL;
        this.adresse = adresse;
        this.doneur = doneur;
        this.sang=sang;
    }



    public Long getIdBeneficaire() {
        return idBeneficaire;
    }

    public void setIdBeneficaire(Long idBeneficaire) {
        this.idBeneficaire = idBeneficaire;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImageURL() {
        return imageURL;
    }


    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public Boolean getDoneur() {
        return doneur;
    }

    public void setDoneur(Boolean doneur) {
        this.doneur = doneur;
    }

    public Sang getSang() {return sang;}

    public void setSang(Sang sang) {this.sang = sang;}

}
