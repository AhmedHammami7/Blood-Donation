package com.example.BloodDonation.services;

import com.example.BloodDonation.models.Administrateur;
import com.example.BloodDonation.models.Beneficaire;
import com.example.BloodDonation.repositories.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class AdminService {
    private AdminRepository adminRepository;
    @Autowired
    public AdminService(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
    }

    public List<Administrateur> getAdmin() {
        return adminRepository.findAll();
    }

    public Optional<Administrateur> getAdminById(Long id) {
        return adminRepository.findById(id);
    }

    public void addNewAdmin(Administrateur administrateur) {
        adminRepository.save(administrateur);
    }

    public void deleteAdmin(Long adminId) {
        boolean exists = adminRepository.existsById(adminId);
        if (!exists) {
            throw new IllegalStateException("Administrateur avec id " + adminId + " est introuvable!!!");
        }
        adminRepository.deleteById(adminId);
    }
    @Transactional
    public void updateAdmin(Long adminId, Administrateur administrateur) {
        Administrateur newAdmin = adminRepository.findById(adminId)
                .orElseThrow(() -> new IllegalStateException("Administrateur avec id " + adminId + " est introuvable!!!"));
        if (administrateur.getNom() != null && administrateur.getNom().length() > 0 && !Objects.equals(newAdmin.getNom(), administrateur.getNom())) {
            newAdmin.setNom(administrateur.getNom());
        }
        if (administrateur.getEmail() != null && administrateur.getEmail().length() > 0 && !Objects.equals(newAdmin.getEmail(), administrateur.getEmail())) {
            newAdmin.setEmail(administrateur.getEmail());
        }
        if (administrateur.getPassword() != null && administrateur.getPassword().length() > 0 && !Objects.equals(newAdmin.getPassword(), administrateur.getPassword())) {
            newAdmin.setPassword(administrateur.getPassword());
        }
    }
}
