package edu.global.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {

	//admin/company : 회사정보
//	admin/admin : 관리자페이지 홈
//	
//	admin/board/home : 관리자용 게시판 홈
//	admin/board/review : 리뷰 관리
//	admin/board/notice : 공지사항
//	admin/board/qna : qna관리
//	
//	
//	admin/product/home : 관리자용 상품관리 홈
//	admin/product/list :
//	
//	admin/order : 관리자용 주문관리 홈
//	
	
	
	
	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/user/userHome")
	public void userHome() {
		log.info("userHome()..");
		// return "home";
	}


	@GetMapping("/admin/admin")
	public void adminHome() {
		log.info("adminHome()..");
		// return "home";
	}
	
	@GetMapping("/login/index")
	public String loginindex() {
		log.info("loginindex");
		 return "/login/index";
	}
	
	@GetMapping("/login/signup")
	public String loginsignUp() {
		log.info("loginsignup");
		 return "/login/signUp";
	}
	
	@RequestMapping("/google-callback")
	public String callback() {
		return "/google-callback";
	}
	
}
