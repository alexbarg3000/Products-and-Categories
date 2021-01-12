package com.codingdojo.java.spring.demo.repositories;

import com.codingdojo.java.spring.demo.models.Category;
import com.codingdojo.java.spring.demo.models.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Long> {
    List<Category> findAll();
    List<Category> findByProductsNotContains(Product product);
}
