package com.example.BloodDonation.controllers;


import com.example.BloodDonation.models.Beneficaire;
import com.example.BloodDonation.models.Requete;
import com.example.BloodDonation.services.RequeteService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("requete")
public class RequeteController {
    private RequeteService requeteService;

    public RequeteController(RequeteService requeteService) {
        this.requeteService = requeteService;
    }
    @GetMapping
    public List<Requete> getRequete(){
        return requeteService.getRequete();
    }
    @GetMapping("{id}")
    public Optional<Requete> getRequeteById(@PathVariable Long id){
        return requeteService.getRequeteById(id);
    }
    @PostMapping
    public void addNewRequete(@RequestBody Requete requete){
        requeteService.addNewRequete(requete);
    }
    @DeleteMapping(path = "{requeteId}")
    public void deleteRequete(@PathVariable Long requeteId){
        requeteService.deleteRequete(requeteId);
    }
    @PutMapping(path = "{requeteId}")
    public void updateRequete(@PathVariable Long requeteId, @RequestBody Requete requete){
        requeteService.updateRequete(requeteId,requete);
    }
}
