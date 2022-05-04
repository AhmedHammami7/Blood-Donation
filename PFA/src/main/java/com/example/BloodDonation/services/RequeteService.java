package com.example.BloodDonation.services;

import com.example.BloodDonation.models.Beneficaire;
import com.example.BloodDonation.models.Requete;
import com.example.BloodDonation.repositories.RequeteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class RequeteService {


    private RequeteRepository requeteRepository;
    @Autowired
    public RequeteService(RequeteRepository requeteRepository) {
        this.requeteRepository = requeteRepository;
    }


    public List<Requete> getRequete() {
        return requeteRepository.findAll();
    }

    public Optional<Requete> getRequeteById(Long id) {
        return requeteRepository.findById(id);
    }

    public void addNewRequete(Requete requete) {
        requeteRepository.save(requete);
    }

    public void deleteRequete(Long requeteId) {
        boolean exists = requeteRepository.existsById(requeteId);
        if (!exists) {
            throw new IllegalStateException("Requete avec id " + requeteId + " est introuvable!!!");
        }
        requeteRepository.deleteById(requeteId);

    }
    @Transactional
    public void updateRequete(Long requeteId, Requete requete) {
        Requete newRequete = requeteRepository.findById(requeteId)
                .orElseThrow(() -> new IllegalStateException("Requete avec id " + requeteId + "est introuvable!!!"));
        if (requete.getAdresse() != null && requete.getAdresse().length() > 0 && !Objects.equals(newRequete.getAdresse(), requete.getAdresse())) {
            newRequete.setAdresse(requete.getAdresse());
        }
        if (requete.getTelephone() != null && requete.getTelephone().length() > 0 && !Objects.equals(newRequete.getTelephone(), requete.getTelephone())) {
            newRequete.setTelephone(requete.getTelephone());
        }
        if (requete.getDescription() != null && requete.getDescription().length() > 0 && !Objects.equals(newRequete.getDescription(), requete.getDescription())) {
            newRequete.setDescription(requete.getDescription());
        }

        if (requete.getTelephone() != null && requete.getTelephone().length() > 0 && !Objects.equals(newRequete.getTelephone(), requete.getTelephone())) {
            newRequete.setTelephone(requete.getTelephone());
        }
        if (requete.getDate() != null && !Objects.equals(newRequete.getDate(), requete.getDate())) {
            newRequete.setDate(requete.getDate());
        }




    }
}
