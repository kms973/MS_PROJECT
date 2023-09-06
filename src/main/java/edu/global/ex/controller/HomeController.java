package edu.global.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.global.ex.mapper.CompanyMapper;
import edu.global.ex.page.Criteria;
import edu.global.ex.service.BoardService;
import edu.global.ex.service.CompanyService;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.CompanyVO;
import edu.global.ex.vo.CustomUserDetailsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {

	// admin/company : 회사정보
	// admin/admin : 관리자페이지 홈
	//
	// admin/board/home : 관리자용 게시판 홈
	// admin/board/review : 리뷰 관리
	// admin/board/notice : 공지사항
	// admin/board/qna : qna관리
	//
	//
	// admin/product/home : 관리자용 상품관리 홈
	// admin/product/list : 관리자용 상품관리 리스트
	// admin/product/new : 관리자용 상품등록
	//
	// admin/order : 관리자용 주문관리 홈
	//

	@Autowired
	private CompanyMapper cmp;

	@Autowired
	private CompanyService companyService;

	@Autowired
	private BoardService boardService;

	// 홈 페이지
	@GetMapping("/")
	public String home(@AuthenticationPrincipal CustomUserDetailsVO customUserDetailsVO) {
		// if (customUserDetailsVO != null) {
		// List<GrantedAuthority> authorities = (List<GrantedAuthority>)
		// customUserDetailsVO.getAuthorities();
		//
		// for (GrantedAuthority auth : authorities) {
		// String authString = auth.toString();
		// if (authString.equals("ROLE_ADMIN")) {
		// return "redirect:/admin/admin";
		// }
		// // 추가적인 권한에 따른 리다이렉션 처리를 여기에 추가할 수 있습니다.
		// // else if (authString.equals("ROLE_USER")) {
		// // return "redirect:/user/profile";
		// // }
		// }
		// 여기에 사용자 역할에 따른 리다이렉션 로직을 추가할 수 있습니다.
		// 예: ROLE_ADMIN일 경우 "/admin/admin"으로 리다이렉션
		return "index";
	}

	// 사용자 홈 페이지
	@GetMapping("/user/userHome")
	public void userHome() {
		log.info("userHome()..");
	}

	// 관리자 홈 페이지
	@GetMapping("/admin/admin")
	public String adminHome() {
		log.info("adminHome()..");
		return "/admin/admin";
	}

	// 회사 정보 확인 페이지
	@GetMapping("/admin/company")
	public String adminCompany(CompanyVO companyVO, Model model) {
		log.info("adminCompany..");
		model.addAttribute("company", companyService.getCompany(companyVO));
		return "/admin/company";
	}

	// 회사 정보 수정 페이지
	@GetMapping("/admin/company_write")
	public String adminCompanyWrite(CompanyVO companyVO, Model model) {
		log.info("adminCompanyWrite..");
		
		model.addAttribute("company", companyService.getCompany(companyVO));
		return "/admin/company_write";
	}

	// 회사 정보 수정 처리
	@PostMapping("/admin/company")
	public String companyPost(CompanyVO cvo) {
		log.info("companyPost()..");
		cmp.update(cvo);
		return "redirect:/admin/company";
	}

	// 관리자 게시판 홈 페이지
	@GetMapping("/admin/board")
	public String adminBoardHome(Criteria cri, Model model) {
		log.info("adminBoardHome");
		model.addAttribute("boardList", boardService.getList());
		return "/admin/board/list";
	}

	// 게시판 작성 페이지
	@PostMapping("/admin/write")
	public String write(BoardVO boardVO) {
		log.info("write()..");
		return "board/write";
	}

	// 게시판 수정 페이지
	@PostMapping("/admin/modify")
	public String modify(BoardVO boardVO) {
		log.info("modify()..");
		int rn = boardService.modify(boardVO);
		log.info("modify().. result number :: " + rn);
		return "redirect:board";
	}

	// 게시판 내용 보기 페이지
	@GetMapping("/admin/content_view")
	public String content_view(BoardVO boardVO, Model model) {
		log.info("content_view()..");
		int bid = boardVO.getBid();
		model.addAttribute("content_view", boardService.read(bid));
		return "/admin/board/content_view";
	}

	// 게시판 삭제 처리
	@GetMapping("/admin/delete")
	public String delete(BoardVO bid, Model model) {
		log.info("delete()..");
		model.addAttribute("delete", boardService.delete(bid));
		return "redirect:board";
	}

	// 관리자 게시판 작성 페이지
	@GetMapping("/admin/write")
	public String adminBoardWrite() {
		log.info("adminBoardWrite");
		return "/admin/board/write";
	}

	// 관리자 공지사항 게시판 페이지
	@GetMapping("/admin/board/notice")
	public String adminBoardNotice() {
		log.info("adminBoardNotice");
		return "/admin/board/notice";
	}

	// 관리자 Q&A 게시판 페이지
	@GetMapping("/admin/board/qna")
	public String adminBoardQNA() {
		log.info("adminBoardQna");
		return "/admin/board/qna";
	}

	// 관리자 리뷰 게시판 페이지
	@GetMapping("/admin/board/review")
	public String adminBoardReview() {
		log.info("adminBoardReview");
		return "/admin/board/review";
	}

	// 관리자 상품 관리 홈 페이지
	@GetMapping("/admin/product/home")
	public String adminProductHome() {
		log.info("adminProductHome");
		return "/admin/product/home";
	}

	// 관리자 상품 목록 페이지
	@GetMapping("/admin/product/list")
	public String adminProductList() {
		log.info("adminProductList");
		return "/admin/product/product_list";
	}

	// 관리자 상품 등록 페이지
	@GetMapping("/admin/product/new")
	public String adminProductNew() {
		log.info("adminProductNew");
		return "/admin/product/product_new";
	}

	// 관리자 주문 목록 페이지
	@GetMapping("/admin/order/list")
	public String adminOrderList() {
		log.info("adminOrderList");
		return "/admin/order/order_list";
	}
	
	// 관리자 주문 목록 페이지
		@GetMapping("/admin/customer/mgr")
		public String adminCustomerMGR() {
			log.info("adminCustomerMGR");
			return "/admin/customer/mgr";
		}
	

	// 링 상점 페이지
	@GetMapping("/shop/ring")
	public String shopRing() {
		log.info("shopRing()..");
		return "/shop/ring";
	}

	// 커뮤니티 페이지
	@GetMapping("/community")
	public String community() {
		log.info("community()..");
		return "/community";
	}

	// 쇼핑 페이지
	@GetMapping("/shop")
	public String shop() {
		log.info("shop()..");
		return "/shop";
	}

	// 장바구니 페이지
	@GetMapping("/cart")
	public String cart() {
		log.info("cart()..");
		return "/cart";
	}

	// 결제 페이지
	@GetMapping("/pay")
	public String pay() {
		log.info("pay()..");
		return "/pay";
	}

	// 링 페이지
	@GetMapping("/ring")
	public String ring() {
		log.info("ring()..");
		return "/shop/ring";
	}
}
