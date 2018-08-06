package com.web.config;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan("com.web")
public class WebAppConfig extends WebMvcConfigurerAdapter {
	
	@Autowired
    private ServletContext servletContext;
	@Bean
	public ViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/css/");
		registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/images/");
		registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/js/");
		registry.addResourceHandler("/xml/**").addResourceLocations("/WEB-INF/xml/");
		registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/fonts/");
		registry.addResourceHandler("/icon/**").addResourceLocations("/WEB-INF/icon/");
//		registry.addResourceHandler("/CITY_CHT2.xml/**").addResourceLocations("/css/");
//		registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/views/fonts/");
//		registry.addResourceHandler("/sass/**").addResourceLocations("/WEB-INF/views/sass/");
	}
	
	  @Override
	    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
	        configurer.enable();
	    }
	  
	  @Bean
	  public CommonsMultipartResolver multipartResolver() {
		  CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		  resolver.setDefaultEncoding("UTF-8");
		  resolver.setMaxInMemorySize(819200000);
		  return resolver;
	  }
	
}
