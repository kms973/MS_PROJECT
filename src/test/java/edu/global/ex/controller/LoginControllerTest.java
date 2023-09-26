package edu.global.ex.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;

import java.util.Date;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.fasterxml.jackson.databind.ObjectMapper;

import edu.global.ex.mapper.MsUserMapper;
import edu.global.ex.vo.UserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@AutoConfigureMockMvc
class LoginControllerTest {

	@Autowired
	private MockMvc mockMvc;
	private LoginController loginController;
	
	//로그인 테스트
	@Test
	void loginTest() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.get("/login"))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}

	//안됨
	/*
	 * @BeforeEach void setupForTest() { this.mockMvc =
	 * MockMvcBuilders.standaloneSetup(loginController).build(); }
	 * 
	 * @Test void memberTest() throws Exception{
	 * 
	 * ObjectMapper objectMapper = new ObjectMapper(); Date date = new Date(2023, 9,
	 * 25);
	 * 
	 * UserVO usv = new UserVO(); usv.setUsername("admin");
	 * usv.setPassword("admin");
	 * 
	 * String content = objectMapper.writeValueAsString(usv);
	 * 
	 * mockMvc.perform(MockMvcRequestBuilders.get("/login"))
	 * .content(content).contentType(MediaType.APPLICATION_JSON)
	 * .andDo(print()).andReturn(); }
	 */
	 
	 

}
