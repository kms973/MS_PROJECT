package edu.global.ex.mapper;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import edu.global.ex.vo.MsUserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class MsUserMapperTest {

	@Autowired
	private MsUserMapper userMapper;

	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	
	@Test
	void testInsertUser() {
		MsUserVO user = new MsUserVO();
		user.setUsername("admin");
		user.setPassword(new BCryptPasswordEncoder().encode("admin"));
		user.setEnabled(1);
//		---
		user.setCname("이름");
		user.setCaddress1("집");

			log.info(user.toString());
		userMapper.insertUser(user);
		userMapper.insertAuthorities(user);
	}

}
