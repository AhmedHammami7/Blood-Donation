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
import static java.time.Month.JUNE;


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
                    "https://drive.google.com/uc?export=view&id=1GN3vlf7FJDqXDB5kzG3m5qjFYUk5rEae",
                    "mourouj",
                    Boolean.TRUE,
                    a1
            );
            Beneficaire ben2= new Beneficaire(
                    "Ahmed Hammami",
                    "ahmedhammami377@gmail.com",
                    "25021738",
                    "ahmed123",
                    "https://drive.google.com/uc?export=view&id=1wzLlq2k_lVYeSUWgV4xfadJkXMsfgcBz",
                    "bizerte",
                    Boolean.FALSE,
                    o1
            );
            beneficaireRepository.saveAll(List.of(ben1,ben2));

            Requete req1 = new Requete("Mahdia","22765284","accident voiture", LocalDate.of(2022, JULY,21),a1,ben1);
            Requete req2 = new Requete("Bizerte","25021738","accident moto", LocalDate.of(2022, JUNE,03),o1,ben2);
            requeteRepository.saveAll(List.of(req1,req2));

            Administrateur administrateur = new Administrateur("ADMIN", "ADMIN@FST.TN","admin");
            adminRepository.saveAll(List.of(administrateur));
            Blog blog = new Blog("The Surprising Benefits of Donating Blood\n","\nNewYork-Presbyterian experts\n explain how donating blood not\nonly helps someone in need, but\nalso offers health benefits for the\ndonors themselves.","Every two seconds, someone in the U.S. requires\na blood transfusion, according to the American\nRed Cross. \nWhile blood donors don't expect to be rewarded \nfor the act of kindness, rolling up your sleeve\ncomes with some surprising health benefits. ","https://drive.google.com/uc?export=view&id=1an1nqZAcR5gyq3fRdPhUcbk6CxGxUiy6");
            blogRepository.saveAll(List.of(blog));



        };

    }
}
