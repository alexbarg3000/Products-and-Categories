package com.codingdojo.java.spring.demo.services;

import com.codingdojo.java.spring.demo.models.Category;
import com.codingdojo.java.spring.demo.models.CategoryProduct;
import com.codingdojo.java.spring.demo.models.Product;
import com.codingdojo.java.spring.demo.repositories.CategoryProductRepository;
import com.codingdojo.java.spring.demo.repositories.CategoryRepository;
import com.codingdojo.java.spring.demo.repositories.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProdCatServ {
    private final ProductRepository productRepository;
    private final CategoryRepository categoryRepository;
    private final CategoryProductRepository categoryProductRepository;

    public ProdCatServ(ProductRepository productRepository, CategoryRepository categoryRepository, CategoryProductRepository categoryProductRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;
        this.categoryProductRepository = categoryProductRepository;
    }

    //Product
    public void addProd(Product product) {
        productRepository.save(product);
    }

    public void setCat(Category category) {

    }

    public void addCatToProduct(CategoryProduct categoryProduct) {
        categoryProductRepository.save(categoryProduct);
    }

    public Product singleProd(Long id) {
        Optional<Product> product = productRepository.findById(id);
        if(product.isPresent()) {
            return product.get();
        }
        else {
            return null;
        }
    }

    public Iterable<Product> availableProductsForCategory(Category category) {
        return productRepository.findByCategoriesNotContains(category);
    }

    //Category
    public void addCat(Category category) {
        categoryRepository.save(category);
    }

    public List<Category> getCatAll() {
        return categoryRepository.findAll();
    }

    public List<Category> availableCategoriesForProduct(Product product) {
        return categoryRepository.findByProductsNotContains(product);
    }

    public void addProdToCategory(CategoryProduct categoryProduct) {
        categoryProductRepository.save(categoryProduct);
    }

    public Category singleCat(Long id) {
        Optional<Category> category = categoryRepository.findById(id);
        if(category.isPresent()) {
            return category.get();
        }
        else {
            return null;
        }
    }

}
