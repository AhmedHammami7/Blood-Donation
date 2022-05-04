package com.example.BloodDonation.controllers;


import com.example.BloodDonation.models.Beneficaire;
import com.example.BloodDonation.repositories.BeneficaireRepository;
import com.example.BloodDonation.services.BeneficaireService;
import lombok.NonNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/beneficaire")
public class BeneficaireController {
    private BeneficaireService beneficaireService;
    @Autowired
    private BeneficaireRepository beneficaireRepository;
    @Autowired
    public BeneficaireController(BeneficaireService beneficaireService) {
        this.beneficaireService = beneficaireService;
    }
    @GetMapping
    public List<Beneficaire> getBeneficaire(){
        return beneficaireService.getBeneficaire();
    }
    @GetMapping("{id}")
    public Optional<Beneficaire> getBeneficaireById(@PathVariable Long id){
        return beneficaireService.getBeneficaireById(id);
    }
    //********Authentification work***************
    /*@PostMapping("/register")
    public Beneficaire Register(@RequestBody Beneficaire beneficaire){
        return beneficaireRepository.save(beneficaire);
    }*/
    /*@PostMapping("/login")
    public Beneficaire Login(@RequestBody  Beneficaire beneficaire) {
        Beneficaire oldBeneficaire = beneficaireRepository.findByMailAndPassword(beneficaire.getMail(), beneficaire.getPassword());
        return oldBeneficaire;

    }*/
    //********Authentification work***************
    @PostMapping
    public void addNewBeneficaire(@RequestBody Beneficaire beneficaire){
        beneficaireService.addNewBeneficaire(beneficaire);
    }

    @DeleteMapping(path = "{beneficaireId}")
    public void deleteBeneficaire(@PathVariable Long beneficaireId){
        beneficaireService.deleteBeneficaire(beneficaireId);
    }
    @PutMapping(path = "{beneficaireId}")
    public void updateBeneficaire(@PathVariable Long beneficaireId, @RequestBody Beneficaire beneficaire){
        beneficaireService.updateBeneficaire(beneficaireId,beneficaire);
    }
}
