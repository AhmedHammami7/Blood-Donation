package com.example.BloodDonation.repositories;

import com.example.BloodDonation.models.Blog;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BlogRepository extends JpaRepository<Blog,Long> {
}
