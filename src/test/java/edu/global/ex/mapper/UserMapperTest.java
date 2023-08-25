package edu.global.ex.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import edu.global.ex.vo.UserVO;

@SpringBootTest
class UserMapperTest {

	@Autowired
	private UserMapper userMapper;

	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
//	@Test
//	void testGetList() {
//		UserVO user = userMapper.getUser("admin");
//		System.out.println(user);
//	}

	@Test
	void testInsertUser() {
		UserVO user = new UserVO();
		user.setUsername("admin");
		user.setPassword(new BCryptPasswordEncoder().encode("admin"));
		user.setEnabled(1);

	//		log.info(user.toString());
		userMapper.insertUser(user);
		userMapper.insertAuthorities(user);
	}
	
//	@Test
//	void testMatchUser() {
//		UserVO user = new UserVO();
//		user.setUsername("admin");
//		user.setPassword(passwordEncoder.encode("admin"));
//		user.setEnabled(1);
//		
//		System.out.println(user);
//		
//		boolean bool = passwordEncoder.matches("admin", user.getPassword());
//		
//		System.out.println(bool);
//		
//		
//	}
}
