package com.me.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.me.entity.Book;

public interface BookRepository extends JpaRepository<Book,Integer>
{
	
}
