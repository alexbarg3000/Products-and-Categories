package com.codingdojo.java.spring.demo.repositories;

import com.codingdojo.java.spring.demo.models.Category;
import com.codingdojo.java.spring.demo.models.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long> {
    List<Product> findAll();
    List<Product> findByCategoriesNotContains(Category category);
}
