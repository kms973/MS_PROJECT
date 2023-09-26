package edu.global.ex.controller;

import static org.springframework.test.web.client.match.MockRestRequestMatchers.content;

import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.fasterxml.jackson.databind.ObjectMapper;

import edu.global.ex.mapper.MsUserMapper;
import edu.global.ex.vo.MsUserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@AutoConfigureMockMvc
class HomeControllerTest {

	@Autowired
	private MockMvc mockMvc;


	@Test
	void testList() throws Exception {
		// board/list 테스트
		// Board 게시판
		mockMvc.perform(MockMvcRequestBuilders.get("/community").accept(MediaType.TEXT_HTML)) 
				.andExpect(MockMvcResultMatchers.status().isOk()) 
				.andDo(MockMvcResultHandlers.print());
	}

	@Test
	void testModify() throws Exception {
		// board/modify 테스트
		// 게시판 수정 테스트
		String resultPage = mockMvc
			.perform(MockMvcRequestBuilders.get("/modify")
				.param("bid", "147")
				.param("btitle", "수정된 테스트 새글 제목")
				.param("bcontent", "수정된 테스트 새글 내용")
				.param("bname", "user00"))
			.andReturn().getModelAndView().getViewName();

		log.info(resultPage);
	}
	//게시판 새글 등록 테스트
	@Test
	void testWrite() throws Exception {
		String resultPage = mockMvc
			.perform(MockMvcRequestBuilders.post("/write")
				.param("btitle", "테스트 새글 제목")
				.param("bcontent", "테스트 새글 내용")
				.param("bname", "user00"))
			.andReturn().getModelAndView().getViewName();

		log.info(resultPage);
	}
	
	//게시판 글 삭제 테스트
	@Test
	void testDelete() throws Exception {
	  String[] methods = mockMvc.perform(MockMvcRequestBuilders.options("/delete"))
	    .andReturn().getResponse().getHeader("Allow").split(",");

	  // methods 배열에 `/delete` 페이지에서 지원하는 HTTP 메서드가 포함되어 있는지 확인.
	}
	
	@Test
	void testAdminboard() throws Exception {
		// board/list 테스트
		// Board 게시판
		mockMvc.perform(MockMvcRequestBuilders.get("/admin/board").accept(MediaType.TEXT_HTML)) 
				.andExpect(MockMvcResultMatchers.status().isOk()) 
				.andDo(MockMvcResultHandlers.print());
	}

	@Test
	void getMappingTest() throws Exception {
		// 메인페이지
		mockMvc.perform(MockMvcRequestBuilders.get("/")).andExpect(MockMvcResultMatchers.status().isOk()); 	
	}
	
	
	//admin 접속 테스트
	@Test
	void adminTest() throws Exception{
		log.info("==========admin=========");
		MsUserVO mus = new MsUserVO();
		mus.setUsername("admin");
		mus.setPassword("admin");
		mockMvc.perform(MockMvcRequestBuilders.get("/admin/admin").accept(MediaType.TEXT_HTML)); 
		
	}
	

	 

}