package com.codingdojo.java.spring.demo.controllers;

import com.codingdojo.java.spring.demo.models.Category;
import com.codingdojo.java.spring.demo.services.ProdCatServ;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller

public class CategoryController {
    private final ProdCatServ prodCatServ;

    public CategoryController(ProdCatServ prodCatServ) {
        this.prodCatServ = prodCatServ;
    }

    @GetMapping("/categories/new")
    public String newCatPage(@ModelAttribute("categoryObject") Category category) {
        return "ProductsAndCategories/newcategory.jsp";
    }

    @PostMapping("/addcategory")
    public String addCategory(@Valid @ModelAttribute("categoryObject") Category category, BindingResult result) {
        if(result.hasErrors()) {
            return "/categories/new";
        }
        else {
            prodCatServ.addCat(category);
            return "redirect:/categories/new";
        }
    }
}
