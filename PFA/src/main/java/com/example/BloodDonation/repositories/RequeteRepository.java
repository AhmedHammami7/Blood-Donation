package com.example.BloodDonation.repositories;

import com.example.BloodDonation.models.Requete;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface RequeteRepository extends JpaRepository<Requete, Long> {
}
