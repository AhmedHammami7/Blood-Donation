package com.example.BloodDonation.repositories;

import com.example.BloodDonation.models.Beneficaire;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface BeneficaireRepository extends JpaRepository<Beneficaire, Long> {
    Beneficaire findByMailAndPassword(String mail,String password);
    Optional<Beneficaire> findBeneficaireByMail(String mail);
}
