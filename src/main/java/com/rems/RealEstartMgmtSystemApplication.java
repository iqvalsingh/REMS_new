package com.rems;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class RealEstartMgmtSystemApplication extends SpringBootServletInitializer
{

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application)
	{
		return application.sources(RealEstartMgmtSystemApplication.class);
	}

	public static void main(String[] args)
	{
		// System.setProperty("server.servlet.context-path", "/rems");
		SpringApplication.run(RealEstartMgmtSystemApplication.class, args);
	}

}
