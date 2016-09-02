package com.niit.shoppingcartfrontend.controller;

import org.slf4j.Logger;


import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.model.Category;
//import com.niit.shoppingcartfrontend.util.Util;

@Controller
public class CategoryController {
	
	Logger log = LoggerFactory.getLogger(CategoryController.class);

	
	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Category category;

	
	
	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String categoryList(Model model) 
	{   
		//model.addAttribute("isIsadminClickedCategory","true");
		model.addAttribute("category", category);
		model.addAttribute("categoryList", categoryDAO.list());
		return "category";
	}

	// For add and update category both
	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category) {

		//String newID = Util.removeComma(category.getId());
		//category.setId(newID);		
		categoryDAO.saveOrUpdate(category);

		return "category";
		

	}

	//to delete category
	@RequestMapping("/category/remove/{id}")
	public String deleteCategory(@PathVariable("id") String id, ModelMap model) 
	throws Exception{
		try {
			categoryDAO.delete(id);
			model.addAttribute("message","successfully deleted");
	 }
	catch (Exception e)
	{
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
	return "category";
	}
	
	//to edit category
	@RequestMapping(value="/category/edit/{id}")
	public String editCategory(@PathVariable("id") String id, ModelMap model)
	{
		//category=categoryDAO.get(id);
		//model.addAttribute("category", category);
		//model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("category", this.categoryDAO.get(id));
		model.addAttribute("category", this.categoryDAO.list());
		return "category";
	}
}
