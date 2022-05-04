package com.example.BloodDonation.repositories;

import com.example.BloodDonation.models.Sang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface SangRepository extends JpaRepository<Sang, Long> {
}
