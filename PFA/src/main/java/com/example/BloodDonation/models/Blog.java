package com.example.BloodDonation.models;


import javax.persistence.*;

@Entity
@Table
public class Blog {
    @Id
    @SequenceGenerator(name = "blog_sequence",
    sequenceName = "blog_sequence", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.AUTO,
            generator = "blog_sequence"
    )
    private Long id;
    private String titre;
    private String description;
    private String content;
    private String imageURL;

    public Blog() {}

    public Blog(Long id
            , String titre
            , String description
            , String content
            , String imageURL) {
        this.id = id;
        this.titre = titre;
        this.description = description;
        this.content = content;
        this.imageURL = imageURL;
    }

    public Blog(String titre
            , String description,String content,
                String imageURL) {
        this.titre = titre;
        this.description = description;
        this.content = content;
        this.imageURL = imageURL;
    }

    public Long getId() {return id;}

    public void setId(Long id) {this.id = id;}

    public String getTitre() {return titre;}

    public void setTitre(String titre) {this.titre = titre;}

    public String getDescription() {return description;}

    public void setDescription(String description) {this.description = description;}

    public String getContent() {return content;}

    public void setContent(String content) {this.content = content;}


    public String getImageURL() {return imageURL;}

    public void setImageURL(String imageURL) {this.imageURL = imageURL;}
}
