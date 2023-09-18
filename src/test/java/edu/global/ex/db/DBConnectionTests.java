package edu.global.ex.db;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class DBConnectionTests {

	@Autowired
	private DataSource ds;
	
	//DataSource Connection 확인
	@Test
	void testDataSoruce() {
		System.out.println("DataSource");
		try (Connection conn = ds.getConnection()) {
			System.out.println("DB Connection Success" + conn);
		} catch (Exception e){
			System.out.println("DB Connection Fail");
			e.printStackTrace();
		}

	}

}
