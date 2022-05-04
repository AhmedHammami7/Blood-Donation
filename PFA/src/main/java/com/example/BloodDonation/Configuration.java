package com.example.BloodDonation;

import com.example.BloodDonation.models.*;
import com.example.BloodDonation.repositories.*;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;

import javax.xml.crypto.Data;
import java.time.LocalDate;
import java.time.Month;
import java.util.Date;
import java.util.List;

import static java.time.Month.JULY;


@org.springframework.context.annotation.Configuration
public class Configuration {
    @Bean
    CommandLineRunner commandLineRunner(BeneficaireRepository beneficaireRepository,
                                        SangRepository sangRepository,
                                        RequeteRepository requeteRepository,
                                        AdminRepository adminRepository,
                                        BlogRepository blogRepository){
        return args -> {
            Sang a1 = new Sang("A+");
            Sang a2 = new Sang("A-");
            Sang b1 = new Sang("B+");
            Sang b2 = new Sang("B-");
            Sang o1 = new Sang("O+");
            Sang o2 = new Sang("O-");
            Sang ab1 = new Sang("AB+");
            Sang ab2 = new Sang("AB-");


            sangRepository.saveAll(List.of(a1,a2,b1,b2,o1,o2,ab1,ab2));

            Beneficaire ben1= new Beneficaire(
                    "Motez Lassoued",
                    "motezlassoued0@gmail.com",
                    "22765284",
                    "azerty123",
                    "www.hhh.com",
                    Boolean.TRUE,
                    a1
            );
            beneficaireRepository.saveAll(List.of(ben1));

            Requete req1 = new Requete("Mahdia","00000000","accident voiture", LocalDate.of(2022, JULY,21),a1,ben1);
            requeteRepository.saveAll(List.of(req1));


            Administrateur administrateur = new Administrateur("ADMIN", "ADMIN@FST.TN","admin");
            adminRepository.saveAll(List.of(administrateur));
            Blog blog = new Blog("Les different type de sang","Les sang A B O AB","WWW.SANG.TN");
            blogRepository.saveAll(List.of(blog));



        };

    }
}
