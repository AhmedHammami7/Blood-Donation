package com.example.BloodDonation.controllers;

import com.example.BloodDonation.models.Administrateur;
import com.example.BloodDonation.models.Beneficaire;
import com.example.BloodDonation.services.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/admin")
public class AdminController {
    private AdminService adminService;
    @Autowired
    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }
    @GetMapping
    public List<Administrateur> getAdmin(){
        return adminService.getAdmin();
    }
    @GetMapping("{id}")
    public Optional<Administrateur> getAdminById(@PathVariable Long id){
        return adminService.getAdminById(id);
    }
    @PostMapping
    public void addNewAdmin(@RequestBody Administrateur administrateur){
        adminService.addNewAdmin(administrateur);
    }
    @DeleteMapping(path = "{adminId}")
    public void deleteAdmin(@PathVariable Long adminId){
        adminService.deleteAdmin(adminId);
    }
    @PutMapping(path = "{adminId}")
    public void updateAdmin(@PathVariable Long adminId, @RequestBody Administrateur administrateur){
        adminService.updateAdmin(adminId,administrateur);
    }
}
