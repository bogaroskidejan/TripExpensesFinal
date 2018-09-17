package com.software.engineering.spring.tripexspenses.controllers;

import org.springframework.dao.DataAccessException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class DatabaseErrorHandler {
	@ExceptionHandler(DataAccessException.class)
	public String handleDatabaseException(DataAccessException e) {
	System.out.println(e.getMessage());
		System.out.println(e.getClass());
		return "error";
	}
}

