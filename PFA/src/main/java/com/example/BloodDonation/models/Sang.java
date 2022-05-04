package com.example.BloodDonation.models;

import javax.persistence.*;
import java.io.Serializable;


@Table
@Entity

public class Sang implements Serializable {
    @Id
    @SequenceGenerator(name = "sang_sequence",
    sequenceName = "sang_sequence", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO,
    generator = "sang_sequence")
    private Long idSang;
    @Column(unique = true,nullable = false)
    private String type;
    private String types_compatible;
    public Sang() {}

    public Sang(Long idSang,
                String type) {
        this.idSang = idSang;
        this.type = type;
        this.types_compatible=types_compatible();
    }

    public Sang(String type) {
        this.type = type;
        this.types_compatible=types_compatible();
    }



    public String types_compatible(){
        switch(this.type){
            case "A+":
                return ("O+/"+"O-/"+"A+/"+"A-");
            case "A-":
                return ("O-/"+"A-");
            case "B+":
                return ("O+/"+"O-/"+"B+/"+"B-");
            case "B-":
                return ("O-/"+"B-");
            case "AB+":
                return ("O+/"+"O-/"+"A+/"+"A-/"+"B+/"+"B-/"+"AB+/"+"AB-");
            case "AB-":
                return ("O-/"+"A-/"+"B-/"+"AB-");
            case "O+":
                return ("O+/"+"O-");
            case "O-":
                return ("O-");
        }
        return "";

    }

    public Long getIdSang() {return idSang;}

    public String getType() {
        return type;
    }

    public String getTypes_compatible() {return types_compatible;}

}
