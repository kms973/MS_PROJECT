package edu.global.ex.db;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.transaction.Transactional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.global.ex.service.MsUserService;
import edu.global.ex.vo.MsUserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
class UserTests {

	@Autowired
	MsUserService userService;
	
	@Transactional
	@Test
	public void test() {
		MsUserVO userVO = new MsUserVO();
		
		userVO.setUsername("usertest");
		userService.getUsers();
		log.info("회원 정보 가져오기 ---" + userVO);
		
	}
	
	// 상품 리스트
	@Test
	public void contextLoads() {
		assertNotNull(userService);
		log.info("User test");
	}
}
