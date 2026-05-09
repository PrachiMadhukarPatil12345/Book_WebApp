package com.me.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.me.entity.Book;
import com.me.repo.BookRepository;

@Controller

public class Controler
{
	@Autowired

	BookRepository bookRepository;




	@GetMapping("/")

	public String getForm()
	{
		return "form";

	}


	
	

	@GetMapping("/search")
	public String searchBook(@RequestParam(required = false) Integer id ,Model model)
	{
		Optional<Book> byId = bookRepository.findById(id);

		if(byId.isPresent() )
		{
			Book book = byId.get();

			model.addAttribute("Book", book);
		}

		else
		{
			model.addAttribute("Message", "Book Not Found");
		}

		System.out.println(id);
		return "form";

	}
	
	
	
	
	
	@PostMapping("/addbook")
	
	public String addbook(Book book,Model model)	// @RequestBody
	{
		bookRepository.save(book);
		
		model.addAttribute("msg", "Book Added Successfully");
		
       List<Book> all = bookRepository.findAll();
		
		model.addAttribute("Books",all);
		
		return "addbook";
	}
	
	
	
	@GetMapping("/allbooks")
	
	public String getAllBooks(Model model)
	{
		List<Book> all = bookRepository.findAll();
		
		model.addAttribute("Books",all);
		
		return "allbooks";
	}
	
	@GetMapping("/edit")
	
	public String editbook(@RequestParam int id, Model model)
	{
		Optional<Book> byId = bookRepository.findById(id);
		
		if(byId.isPresent() )
				{
			      Book book = byId.get();
			      
			      model.addAttribute("book", book);
				}
		
		
		
		return "edit-book";
		
	}
	
	
	  @PostMapping("/editbook")
	  
	  public String editBookById(@ModelAttribute Book book, Model model) 
	  {
		 
		bookRepository.save(book); // Update existing id
		
        List<Book> all = bookRepository.findAll();
		
		model.addAttribute("Books",all);
		
		return "allbooks";
	  }
	  
	  
	  @GetMapping("/delete")
	  
	  public String deleteById(@RequestParam int id, Model model)
	  {
		  bookRepository.deleteById(id);
		  
		  List<Book> all = bookRepository.findAll();
			
			model.addAttribute("Books",all);
			
			return "allbooks";
	  }
	 
	
}



















