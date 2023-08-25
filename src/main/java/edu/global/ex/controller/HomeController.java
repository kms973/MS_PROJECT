package edu.global.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {

//  admin/company : 회사정보
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
		return "index";
	}

	@GetMapping("/user/userHome")
	public void userHome() {
		log.info("userHome()..");
		// return "home";
	}

	@GetMapping("/admin/admin")
	public String adminHome() {
		log.info("adminHome()..");
		return "/admin/admin";

		// return "home";
	}
	
	@GetMapping("/admin")
	public String admLogin() {
		log.info("admLogin()..");
		return "/admin/login";

		// return "home";
	}
	
//	@GetMapping("/admin/index")
//	public String adminIndex() {
//		log.info("adminIndex()");
//		return "/admin/index";
//	}

	@GetMapping("/admin/company")
	public String adminCompany() {
		log.info("adminCompany..");
		return "/admin/company";
	}

	@GetMapping("/admin/board/home")
	public String adminBoardHome() {
		log.info("adminBoardHome");
		return "/admin/board/home";
	}

	@GetMapping("/admin/board/notice")
	public String adminBoardNotice() {
		log.info("adminBoardNotice");
		return "/admin/board/notice";
	}

	@GetMapping("/admin/board/qna")
	public String adminBoardQNA() {
		log.info("adminBoardQna");
		return "/admin/board/qna";
	}

	@GetMapping("/admin/board/review")
	public String adminBoardReview() {
		log.info("adminBoardReview");
		return "/admin/board/review";
	}

	@GetMapping("/admin/product/home")
	public String adminProductHome() {
		log.info("adminProductHome");
		return "/admin/product/home";
	}

	@GetMapping("/admin/product/list")
	public String adminProductList() {
		log.info("adminProductList");
		return "/admin/product/product_list";
	}

	@GetMapping("/admin/product/new")
	public String adminProductNew() {
		log.info("adminProductNew");
		return "/admin/product/product_new";
	}
	
	@GetMapping("/admin/order/list")
	public String adminOrderList() {
		log.info("adminOrderList");
		return "/admin/order/order_list";
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
