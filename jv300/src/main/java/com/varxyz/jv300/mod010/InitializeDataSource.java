package com.varxyz.jv300.mod010;

import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class InitializeDataSource implements ServletContextListener {
	private static final String JDBC_FILE_PATH = "/WEB-INF/classes/jdbc.properties";
    public void contextDestroyed(ServletContextEvent event )  { 
        
    }

    public void contextInitialized(ServletContextEvent event)  { 
    	 ServletContext context = event.getServletContext();
         InputStream is = null;
         try {
			is = context.getResourceAsStream(JDBC_FILE_PATH);
			Properties prop = new Properties();
			prop.load(is);
			
			String jdbcDriver = prop.getProperty("jdbc.driver");
			String jdbcurl = prop.getProperty("jdbc.url");
			String jdbcusername = prop.getProperty("jdbc.username");
			String jdbcpassword = prop.getProperty("jdbc.password");
			
			DataSource dataSource = new DataSource(jdbcDriver, jdbcurl, jdbcusername, jdbcpassword );
			
			NamingService namingService = NamingService.getInstance();
			namingService.setAttribute("dataSource", dataSource);
			
			context.setAttribute("dataSource", dataSource);
			
			System.out.println("DataSource has been initlzed");
			} catch (Exception e) {
			  e.printStackTrace();
		}        
    }
	
}
