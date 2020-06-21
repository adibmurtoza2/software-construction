package com.example.demo.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Model.Book;
import com.example.demo.Service.BookService;



@Controller
public class BookController {
	   private BookService service;

	    @Autowired
	    public BookController(BookService service) {
	        this.service = service;
	    }
	    
	    @RequestMapping(value = "/", method = RequestMethod.GET)
	    public String showAllBooks(Model model) {
	        model.addAttribute("books", service.findAll());
	        return "books.jsp";
	    }
	    
	    
	    @RequestMapping(value = "/new-book", method = RequestMethod.GET)
	    public String showBookCreationForm(Model model) {
	        model.addAttribute("book", new Book());
	        return "new-book.jsp";
	    }
	    
	    @RequestMapping(value = "/search", method = RequestMethod.GET)
	    public ModelAndView showBookById(@RequestParam (value = "id", required = false) long id) {
	    	ModelAndView mv= new ModelAndView();
	    	Book book = service.findById(id)
	                .orElseThrow(() -> new IllegalArgumentException("Invalid book Id:" + id));
	    	mv.addObject(book);
	    	mv.setViewName("search-book.jsp");
	    	return mv;
	        
	    }

	    @RequestMapping(value = "/add", method = RequestMethod.POST)
	    public String addNewBook(@Validated @ModelAttribute Book book, BindingResult result, Model model) {
	        if (result.hasErrors()) {
	            return "new-book.jsp";
	        }
	        service.save(book);
	        model.addAttribute("books", service.findAll());
	        return "redirect:/";
	    }

	    
	    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
	    public String showBookdById(@PathVariable Long id, Model model) {
	        Book book = service.findById(id)
	                .orElseThrow(() -> new IllegalArgumentException("Invalid book Id:" + id));
	        model.addAttribute("book", book);
	        return "edit-book.jsp";
	    }

	    
	    @RequestMapping(value = "/{id}/update", method = RequestMethod.POST)
	    public String updateBook(@PathVariable Long id, @Validated @ModelAttribute Book book, BindingResult result, Model model) {
	        if (result.hasErrors()) {
	            return "edit-book.jsp";
	        }
	        service.findById(id)
	                .orElseThrow(() -> new IllegalArgumentException("Invalid book Id:" + id));
	        service.save(book);
	        model.addAttribute("books", service.findAll());
	        return "redirect:/";
	    }

	    
	    @RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	    public String deleteBook(@PathVariable Long id, Model model) {
	        service.findById(id)
	                .orElseThrow(() -> new IllegalArgumentException("Invalid book Id:" + id));
	        service.deleteById(id);
	        model.addAttribute("books", service.findAll());
	        return "redirect:/";
	    }

	    

}
