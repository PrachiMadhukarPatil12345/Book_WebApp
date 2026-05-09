package com.me;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.me.entity.Book;
import com.me.repo.BookRepository;

@SpringBootApplication

public class Webmvc2Application 
{

	public static void main(String[] args)
	{
		SpringApplication.run(Webmvc2Application.class, args);
	}

//	@Autowired
//	
//	BookRepository bookrepository;
//	
//	@Override
//	public void run(String... args) throws Exception
//	{
//		Book b1= new Book();
//		
//		
//		b1.setName("JAVA");
//		b1.setPrice(800.90);
//		b1.setQuantity(8);
//		
//Book b2= new Book();
//		
//		
//		b2.setName("JAVA apis");
//		b2.setPrice(60.90);
//		b2.setQuantity(8);
//		
//Book b3= new Book();
//		
//		
//		b3.setName("PYTHON");
//		b3.setPrice(90.90);
//		b3.setQuantity(8);
//		
//Book b4= new Book();
//		
//       
//        b4.setName("web tech");
//        b4.setPrice(200.90);
//        b4.setQuantity(8);
//        
//        bookrepository.saveAll(List.of(b1,b2,b3)    );
		
//	}

}
