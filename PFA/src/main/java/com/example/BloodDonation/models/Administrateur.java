package com.example.BloodDonation.models;

import javax.persistence.*;

@Entity
@Table
public class Administrateur {
    @Id
    @SequenceGenerator(name = "admin_sequence",sequenceName = "admin_sequence",allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO,
    generator = "admin_sequence")
    private Long id;
    private String nom;
    private String email;
    private String password;

    public Administrateur() {
    }
    public Administrateur(String nom,
                          String email,
                          String password) {
        this.nom = nom;
        this.email = email;
        this.password = password;
    }


    public Administrateur(Long id,
                          String nom,
                          String email,
                          String password) {
        this.id = id;
        this.nom = nom;
        this.email = email;
        this.password = password;
    }

    public Long getId() {return id;}

    public void setId(Long id) {this.id = id;}

    public String getNom() {return nom;}

    public void setNom(String nom) {this.nom = nom;}

    public String getEmail() {return email;}

    public void setEmail(String email) {this.email = email;}

    public String getPassword() {return password;}

    public void setPassword(String password) {this.password = password;}

}
