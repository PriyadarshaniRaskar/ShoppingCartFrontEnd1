package com.niit.shoppingcartfrontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.CartDAO;
import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.dao.UserDetailsDAO;
import com.niit.shoppingcartbackend.model.Cart;
import com.niit.shoppingcartbackend.model.Category;
import com.niit.shoppingcartbackend.model.UserDetails;

@Controller
public class UserController {

	Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserDAO userDAO;

	@Autowired
	UserDetailsDAO userDetailsDAO;

	@Autowired
	UserDetails userDetails;

	@Autowired
	private CartDAO cartDAO;

	@Autowired
	private Cart cart;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Category category;

	/**
	 * if invalid credentials -> Home page , login , error message if valid
	 * credentials && he is admin -> AdminHome page ,logout link if valid
	 * credentials && he is end user -> Home page, cart, logout link
	 * 
	 * @param userID
	 * @param password
	 * @return it will return data and page name where to return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam(value = "name") String userID,
			@RequestParam(value = "password") String password, HttpServletRequest request) {
		log.debug("Starting of the method login");
		log.info("userID is {}  password is {}", userID, password);

		System.out.println(userID + "   " + password);
		ModelAndView mv = new ModelAndView("/home");
		boolean isValidUser = userDAO.isValidUser(userID, password);

		if (isValidUser == true) {
			userDetails = userDetailsDAO.get(userID);
			HttpSession session = request.getSession();
			session.setAttribute("loggedInUser", userID);
			mv.addObject("successMessage", "You are successfully LoggedIn..");
			if (userDetails.getAdmin() == 1) {
				mv.addObject("isAdmin", "true");

			} else {
				mv.addObject("isAdmin", "false");
				if ((cart = cartDAO.get(userID)) != null) {

					mv.addObject("cart", cart);
					List<Cart> cartList = cartDAO.listCartItems();
					mv.addObject("cartList", cartList);
					mv.addObject("cartSize", cartList.size());
				}
			}

		} else {
			mv = new ModelAndView("/login");

			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");

		}
		log.debug("Ending of the method login");
		return mv;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("/login");
		session.invalidate();
		session = request.getSession(true);
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());

		mv.addObject("logoutMessage", "You successfully logged out");
		mv.addObject("loggedOut", "true");

		return mv;
		
		
	}
	
	@RequestMapping(value = "/AboutUs", method = RequestMethod.GET)
	public String AboutPage() {
		return "AboutUs";
	}


}
