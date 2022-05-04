package com.example.BloodDonation.controllers;


import com.example.BloodDonation.models.Sang;
import com.example.BloodDonation.services.SangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("sang")
public class SangController {
    private SangService sangService;
    @Autowired
    public SangController(SangService sangService) {
        this.sangService = sangService;
    }

    @GetMapping
    public List<Sang> getSangs(){
        return sangService.getSangs();
    }
    @GetMapping("{id}")
    public Optional<Sang> getSangById(@PathVariable Long id){
        return sangService.getSangById(id);
    }
}
