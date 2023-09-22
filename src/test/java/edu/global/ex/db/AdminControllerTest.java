package edu.global.ex.db;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

@SpringBootTest
@AutoConfigureMockMvc
class AdminControllerTest {
	@Autowired
	private MockMvc mockMvc;
	
	@Test
	@WithMockUser(username = "admin", password = "admin", authorities = "ROLE_ADMIN")
	public void adminPageTest() throws Exception {
		
		// 관리자 홈
		mockMvc.perform(MockMvcRequestBuilders.get("/admin/admin"))
			   .andExpect(MockMvcResultMatchers.status().isOk());
				
		// 관리자 회원 관리 페이지
		mockMvc.perform(MockMvcRequestBuilders.get("/admin/customer/mgr"))
			   .andExpect(MockMvcResultMatchers.status().isOk());
		
		// 관리자 상품 관리 페이지
		mockMvc.perform(MockMvcRequestBuilders.get("/admin/product/list"))
			   .andExpect(MockMvcResultMatchers.status().isOk());
		
	}
}
