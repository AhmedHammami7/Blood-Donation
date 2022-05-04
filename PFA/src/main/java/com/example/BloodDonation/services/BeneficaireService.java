package com.example.BloodDonation.services;

import com.example.BloodDonation.models.Beneficaire;
import com.example.BloodDonation.repositories.BeneficaireRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class BeneficaireService {
    private BeneficaireRepository beneficaireRepository;

    @Autowired
    public BeneficaireService(BeneficaireRepository beneficaireRepository) {
        this.beneficaireRepository = beneficaireRepository;
    }

    public List<Beneficaire> getBeneficaire() {
        return beneficaireRepository.findAll();
    }


    public Optional<Beneficaire> getBeneficaireById(Long id) {
        return beneficaireRepository.findById(id);
    }

    public void addNewBeneficaire(Beneficaire beneficaire) {
        beneficaireRepository.save(beneficaire);
    }

    public void deleteBeneficaire(Long beneficaireId) {
        boolean exists = beneficaireRepository.existsById(beneficaireId);
        if (!exists) {
            throw new IllegalStateException("Beneficaire avec id " + beneficaireId + " est introuvable!!!");
        }
        beneficaireRepository.deleteById(beneficaireId);

    }

    @Transactional

    public void updateBeneficaire(Long beneficaireId, Beneficaire beneficaire) {
        Beneficaire newBeneficaire = beneficaireRepository.findById(beneficaireId)
                .orElseThrow(() -> new IllegalStateException("Beneficaire avec id " + beneficaireId + " est introuvable!!!"));
        if (beneficaire.getNom() != null && beneficaire.getNom().length() > 0 && !Objects.equals(newBeneficaire.getNom(), beneficaire.getNom())) {
            newBeneficaire.setNom(beneficaire.getNom());
        }
        if (beneficaire.getImageURL() != null && beneficaire.getImageURL().length() > 0 && !Objects.equals(newBeneficaire.getImageURL(), beneficaire.getImageURL())) {
            newBeneficaire.setImageURL(beneficaire.getImageURL());
        }
        if (beneficaire.getPassword() != null && beneficaire.getPassword().length() > 0 && !Objects.equals(newBeneficaire.getPassword(), beneficaire.getPassword())) {
            newBeneficaire.setPassword(beneficaire.getPassword());
        }

        if (beneficaire.getTelephone() != null && beneficaire.getTelephone().length() > 0 && !Objects.equals(newBeneficaire.getTelephone(), beneficaire.getTelephone())) {
            newBeneficaire.setTelephone(beneficaire.getTelephone());
        }
        if (beneficaire.getDoneur() != null && !Objects.equals(newBeneficaire.getDoneur(), beneficaire.getDoneur())) {
            newBeneficaire.setDoneur(beneficaire.getDoneur());
        }

        if (beneficaire.getMail() != null && beneficaire.getMail().length() > 0 && !Objects.equals(newBeneficaire.getMail(), beneficaire.getMail())) {
            Optional<Beneficaire> appUserOptional = beneficaireRepository.findBeneficaireByMail(beneficaire.getMail());
            if (appUserOptional.isPresent()) {
                throw new IllegalStateException("Email taken");
            }
            newBeneficaire.setMail(beneficaire.getMail());
        }
    }

}
