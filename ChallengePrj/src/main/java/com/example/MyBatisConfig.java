package com.example;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.transaction.annotation.EnableTransactionManagement;



@Configuration
@EnableTransactionManagement // annotation 기반 트랜잭션 관리를 사용. <tx:annotation-driven />
@MapperScan(basePackages = {"com.example.demo.mapper"}) // mapper 인터페이스가 있는 패키지 경로를 지정.
public class MyBatisConfig {

	
	
	@Bean
	public SqlSessionFactory sqlSessionFactoryBean(DataSource dataSource) throws Exception {
		
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		
		factoryBean.setDataSource(dataSource);
		
		factoryBean.setConfigLocation(new PathMatchingResourcePatternResolver().getResource("com/example/mybatis/config/mybatis-config.xml"));
		
		factoryBean.setTypeAliasesPackage("com.example.demo.dto");
		
		return factoryBean.getObject();
	}
	
	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
		return new SqlSessionTemplate(sqlSessionFactory);
	}
	
	
}
