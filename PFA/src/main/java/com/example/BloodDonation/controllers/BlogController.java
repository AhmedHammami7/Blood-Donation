package com.example.BloodDonation.controllers;

import com.example.BloodDonation.models.Beneficaire;
import com.example.BloodDonation.models.Blog;
import com.example.BloodDonation.services.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/blog")
public class BlogController {

    private BlogService blogService;
    @Autowired
    public BlogController(BlogService blogService) {
        this.blogService = blogService;
    }
    @GetMapping
    public List<Blog> getBlog(){
        return blogService.getBlog();
    }
    @GetMapping("{id}")
    public Optional<Blog> getBlogById(@PathVariable Long id){
        return blogService.getBlogById(id);
    }
    @PostMapping
    public void addNewBlog(@RequestBody Blog blog){
        blogService.addNewBlog(blog);
    }
    @DeleteMapping(path = "{blogId}")
    public void deleteBlog(@PathVariable Long blogId){
        blogService.deleteBlog(blogId);
    }
    @PutMapping(path = "{blogId}")
    public void updateBlog(@PathVariable Long blogId, @RequestBody Blog blog){
        blogService.updateBlog(blogId,blog);
    }
}
