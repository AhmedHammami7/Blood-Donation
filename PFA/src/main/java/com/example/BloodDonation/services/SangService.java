package com.example.BloodDonation.services;

import com.example.BloodDonation.models.Sang;
import com.example.BloodDonation.repositories.SangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SangService {

    private SangRepository sangRepository;
    @Autowired
    public SangService(SangRepository sangRepository) {
        this.sangRepository = sangRepository;
    }

    public List<Sang> getSangs() {
        return sangRepository.findAll();
    }

    public Optional<Sang> getSangById(Long id) {
        return sangRepository.findById(id);
    }
}
