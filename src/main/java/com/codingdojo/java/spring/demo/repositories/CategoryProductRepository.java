package com.codingdojo.java.spring.demo.repositories;

import com.codingdojo.java.spring.demo.models.CategoryProduct;
import com.codingdojo.java.spring.demo.models.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryProductRepository extends CrudRepository<CategoryProduct, Long> {
}
