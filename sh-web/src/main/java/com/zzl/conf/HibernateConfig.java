package com.zzl.conf;

import java.util.Properties;
import javax.sql.DataSource;
import org.hibernate.jpa.HibernatePersistenceProvider;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

public class HibernateConfig extends WebMvcConfigurerAdapter {
	private final static String DB_DRIVER = "com.mysql.jdbc.Driver";
	private final static String DB_URL = "jdbc:mysql://localhost:3306/shdb";
	private final static String DB_USERNAME = "root";
	private final static String DB_PASSWORD = "zzl930621";
	private final static String DB_DIALECT = "org.hibernate.dialect.MySQL5Dialect";
	private static final String DB_SHOW_SQL = "true";
	private static final String DB_ENTITYMANAGER_PACKAGES_TO_SCAN = "com.zzl.entity";
	// dataSource bean will be available
	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		// provide data connection infomation
		dataSource.setDriverClassName(DB_DRIVER);
		dataSource.setUrl(DB_URL);
		dataSource.setUsername(DB_USERNAME);
		dataSource.setPassword(DB_PASSWORD);
		return dataSource;
	}

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
		entityManagerFactoryBean.setDataSource(getDataSource());
		entityManagerFactoryBean.setPersistenceProviderClass(HibernatePersistenceProvider.class);
		entityManagerFactoryBean.setPackagesToScan(DB_ENTITYMANAGER_PACKAGES_TO_SCAN);

		entityManagerFactoryBean.setJpaProperties(getHibernateProperties());

		return entityManagerFactoryBean;
	}

	// sessionFactory bean will be available
	/*
	 * @Bean public SessionFactory getSessionFactory(){
	 * LocalSessionFactoryBuilder builder=new
	 * LocalSessionFactoryBuilder(getDataSource());
	 * builder.addProperties(this.getHibernateProperties());
	 * builder.scanPackages("com.jiang.shoppingbackend.dto"); return
	 * builder.buildSessionFactory(); }
	 */
	// all hibernate properties will be returned in this method
	private Properties getHibernateProperties() {
		Properties p = new Properties();
		p.put("hibernate.dialect", DB_DIALECT);
		p.put("hibernate.show_sql", DB_SHOW_SQL);
		//allow create table
		//p.put("hibernate.hbm2ddl.auto", "create");
		return p;
	}

	// belong to JPA
	@Bean
	public JpaTransactionManager transactionManager() {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactory().getObject());
		return transactionManager;
	}

	// all hibernate properties will be returned in this method
	/*
	 * @Bean public HibernateTransactionManager getHibernateTransactionManager()
	 * { HibernateTransactionManager manager = new
	 * HibernateTransactionManager(getSessionFactory()); return manager; }
	 */
}


