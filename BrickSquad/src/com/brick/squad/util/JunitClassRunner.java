package com.brick.squad.util;

import java.io.FileNotFoundException;

import org.junit.runners.model.InitializationError;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.Log4jConfigurer;

public class JunitClassRunner extends SpringJUnit4ClassRunner  {
	public JunitClassRunner(Class<?> clazz) throws InitializationError {
		super(clazz);
	}
	static {
	      try {
	        Log4jConfigurer.initLogging("classpath:com/brick/squad/config/log4j.properties");
	      } catch (FileNotFoundException ex) {
	        System.err.println("Cannot Initialize log4j");
	      }
	    }
}
