package com.web.config;

import java.beans.PropertyVetoException;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableTransactionManagement
public class RootAppcConfig {

	@Bean
	public DataSource dataSource() {
		ComboPooledDataSource ds = new ComboPooledDataSource();
		ds.setUser("sa");
//		雲端資料庫
//		ds.setUser("memberuser");
		ds.setPassword("P@ssw0rd");
		try {
			ds.setDriverClass("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (PropertyVetoException e) {
			e.printStackTrace();
		}

		ds.setJdbcUrl("jdbc:sqlserver://localhost;DatabaseName=Traveler");
		//雲端資料課庫
//		ds.setJdbcUrl("jdbc:sqlserver://eeittraveler.database.windows.net:1433;DatabaseName=Traveler");

		ds.setInitialPoolSize(4);
		ds.setMaxPoolSize(8);

		return ds;
	}
	
	
	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		System.out.println("sessionFactory...in RootAppConfig");
		LocalSessionFactoryBean factory=new LocalSessionFactoryBean();
		factory.setDataSource(dataSource());
		factory.setPackagesToScan(new String[] {
				"com.web.*"
		});
		factory.setHibernateProperties(additionalProperties());
		return factory;
	}

	@Bean
	@Autowired
	public HibernateTransactionManager transctionManager(SessionFactory sessionFactory) {
		System.out.println("transaction...in RootAppConfig");
		HibernateTransactionManager htm = new HibernateTransactionManager();
		htm.setSessionFactory(sessionFactory);
		return htm;
	}

	private Properties additionalProperties() {
		Properties props = new Properties();
		props.put("hibernate.dialect", org.hibernate.dialect.SQLServer2012Dialect.class);
		props.put("hibernate.show_sql", Boolean.TRUE);
		props.put("hibernate.format_sql", Boolean.TRUE);
		props.put("defalut_batch_fetch_size", 10);
		props.put("hibernate.hbm2ddl.auto", "none");
		return props;
	}
}
