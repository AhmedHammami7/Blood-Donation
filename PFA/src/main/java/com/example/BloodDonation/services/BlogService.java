package com.example.BloodDonation.services;

import com.example.BloodDonation.models.Blog;
import com.example.BloodDonation.repositories.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class BlogService {
    private BlogRepository blogRepository;
    @Autowired
    public BlogService(BlogRepository blogRepository) {
        this.blogRepository = blogRepository;
    }


    public List<Blog> getBlog() {
        return blogRepository.findAll();
    }

    public Optional<Blog> getBlogById(Long id) {
        return blogRepository.findById(id);
    }

    public void addNewBlog(Blog blog) {
        blogRepository.save(blog);
    }

    public void deleteBlog(Long blogId) {
        boolean exists = blogRepository.existsById(blogId);
        if (!exists) {
            throw new IllegalStateException("Blog avec id " + blogId + " est introuvable!!!");
        }
        blogRepository.deleteById(blogId);
    }
    @Transactional
    public void updateBlog(Long blogId, Blog blog) {
        Blog newBlog = blogRepository.findById(blogId)
                .orElseThrow(() -> new IllegalStateException("Administrateur avec id " + blogId + " est introuvable!!!"));
        if (blog.getTitre() != null && blog.getTitre().length() > 0 && !Objects.equals(newBlog.getTitre(), blog.getTitre())) {
            newBlog.setTitre(blog.getTitre());
        }
        if (blog.getDescription() != null && blog.getDescription().length() > 0 && !Objects.equals(newBlog.getDescription(), blog.getDescription())) {
            newBlog.setDescription(blog.getDescription());
        }
        if (blog.getImageURL() != null && blog.getImageURL().length() > 0 && !Objects.equals(newBlog.getImageURL(), blog.getImageURL())) {
            newBlog.setImageURL(blog.getImageURL());
        }
        if (blog.getContent() != null && blog.getContent().length() > 0 && !Objects.equals(newBlog.getContent(), blog.getContent())) {
            newBlog.setContent(blog.getContent());
        }
    }
}
