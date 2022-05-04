package com.example.BloodDonation.repositories;

import com.example.BloodDonation.models.Administrateur;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepository extends JpaRepository<Administrateur,Long> {
}
