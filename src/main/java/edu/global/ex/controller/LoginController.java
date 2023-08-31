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
	
	@GetMapping("/login")
	public String login() {
		return "admin/login";
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
	
	@PostMapping("/login/register")
	public String loginRegister() {
		log.info("loginregister");
		return "/login/registration_complete";
	}
	
	@GetMapping("/login/signuptest")
	public String signuptest() {
		
		
		return "/login/signuptest";
	}
	
	@PostMapping("/login/signuptest")
	public String signuptest(MsUserVO user) {
		
		user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
		
		userMapper.insertUser(user);
		userMapper.insertAuthorities(user);
		
		return "index";
	}
}
