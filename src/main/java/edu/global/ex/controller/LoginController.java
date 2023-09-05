package edu.global.ex.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.global.ex.mapper.MsUserMapper;
import edu.global.ex.vo.MsUserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {

	@Autowired
	private MsUserMapper userMapper;

	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	//어드민로그인
	@GetMapping("/login")
	public String login() {
		return "/admin/login";
	}

	@GetMapping("/loginInfo")
	public String loginInfo(Authentication authentication, Principal principal) {

		String user_id;

		
		// 1.SpringContextHolder를 통하여 가져오는 방법(일반적인 빈에서 사용 할수있음 )
//		org.springframework.security.core.Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		// user_id = auth.getName();
		// System.out.println("유저 아이디:" + user_id);
		// 2.authentication 객체로 가져오는 방법(많은 )
		System.out.println("authentication 유저 아이디:" + authentication.getName());
		System.out.println("authentication 권한들:" + authentication.getAuthorities());

		// 3.Principal 객체로 가져오는 방법(가져올수 있는게 getName() 정도
		System.out.println("Principal 유저 아이디:" + principal.getName());

		return "redirect:/";

	}
//	public class RegisterController {
//
//	    @RequestMapping(value = "/login/register", method = RequestMethod.POST)
//	    public String MemberRegistrationServlet(@RequestParam("userId") String userId, 
//	                               @RequestParam("name") String name, 
//	                               @RequestParam("birthday") String birthday,
//	                               @RequestParam("address") String address,
//	                               @RequestParam("password") String password) {
//	        // 회원 등록 로직 구현
//	        // 데이터베이스 저장 등의 작업 수행
//	        
//	    	return "/login/registration_complete"; // 회원 등록 성공 페이지로 이동
//	    }
//	}
	
	//회원 로그인
	@GetMapping("/login/login")
	public String userlogin() {
		
		return "/login/login";
	}
	
	//로그아웃
	@GetMapping("/logout")
	public String userlogout() {
		
		return "/login/login_regacy";
	}
	
	@GetMapping("/login/google")
	public String googlelogin() {
		log.info("googlelogin");
		return "/login/googleLogin";
	}	
	
	@GetMapping("/login/social")
	public String sociallogin() {
		log.info("sociallogin");
		return "/login/socialLogin";
	}

	@RequestMapping("/login/google-callback")
	public String callback() {
		return "/login/google-callback";
	}
	
	@GetMapping("/login/google2")
	public String google2() {
		log.info("google2");
		return "/login/google2";
	}
	
	// // 구 회원가입성공페이지 
	// @PostMapping("/login/registration_complete")
	// public String loginRegister() {
	// 	log.info("loginregister");
	// 	return "/login/registration_complete";
	// }
	
	//회원가입
	@GetMapping("/login/signup")
	public String signuptest() {
		
		
		return "/login/signuptest";
	}
	
	//회원가입완료
	@PostMapping("/login/signuptest")
	public String signuptest(MsUserVO user) {
		
		user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		
		userMapper.insertUser(user);
		userMapper.insertAuthorities(user);
		
		return "index";
	}
	
	//마이페이지
	@GetMapping("/login/userprofile")
	public String userprofile() {
		log.info("userprofile");
		return "/login/profile_page";
	}

}
