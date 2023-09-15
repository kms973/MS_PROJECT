package edu.global.ex.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import edu.global.ex.mapper.MsUserMapper;
import edu.global.ex.vo.MsUserVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {

	@Autowired
	private MsUserMapper userMapper; // 사용자 관리를 위한 데이터베이스 매퍼

	@Autowired
	private PasswordEncoder passwordEncoder; // 비밀번호 암호화를 위한 빈

	// 로그인 페이지로 이동하는 핸들러
	@GetMapping("/admin")
	public String login() {
		return "/admin/login";
	}

	// 로그인 정보 페이지로 이동하는 핸들러
	@GetMapping("/loginInfo")
	public String loginInfo(Authentication authentication, Principal principal) {

		String user_id;

		// 1. SpringContextHolder를 통하여 가져오는 방법 (일반적인 빈에서 사용할 수 있음)
		// org.springframework.security.core.Authentication auth =
		// SecurityContextHolder.getContext().getAuthentication();
		// user_id = auth.getName();
		// System.out.println("유저 아이디:" + user_id);

		// 2. Authentication 객체로 가져오는 방법 (많이 사용하는 방법)
		System.out.println("authentication 유저 아이디:" + authentication.getName());
		System.out.println("authentication 권한들:" + authentication.getAuthorities());

		// 3. Principal 객체로 가져오는 방법 (가져올 수 있는 것은 getName() 정도)
		System.out.println("Principal 유저 아이디:" + principal.getName());

		return "redirect:/";
	}

	// 사용자 로그인 페이지로 이동하는 핸들러
	@GetMapping("/login")
	public String userlogin(MsUserVO user, Model model) {
		List<MsUserVO> userList = userMapper.getUsers();
		List<String> usernameList = new ArrayList<String>();
		for(MsUserVO userInfo: userList) {
			usernameList.add("\""+userInfo.getUsername() + "\"");
		}
		model.addAttribute("usernameList", usernameList);
//		log.info(userMapper.getUsers().toString());
		
		return "/login/login";
	}

	// 사용자 로그아웃 페이지로 이동하는 핸들러
	@GetMapping("/logout")
	public String userlogout() {
		return "/login";
	}

	// Google 로그인 페이지로 이동하는 핸들러
	@GetMapping("/login/google")
	public String googlelogin() {
		log.info("googlelogin");
		return "/login/googleLogin";
	}

	// 소셜 로그인 페이지로 이동하는 핸들러
	@GetMapping("/login/social")
	public String sociallogin() {
		log.info("sociallogin");
		return "/login/google-login";
	}

	// Google 로그인 콜백 페이지로 이동하는 핸들러
	// @RequestMapping("/login/google-callback")
	// public String callback() {
	// return "/login/google-callback";
	// }

	// Google2 로그인 페이지로 이동하는 핸들러
	@GetMapping("/login/google2")
	public String google2() {
		log.info("google2");
		return "/login/google2";
	}

	// 회원 가입 페이지로 이동하는 핸들러
	@GetMapping("/login/signup")
	public String signuptest(MsUserVO user, Model model) {
		List<MsUserVO> userList = userMapper.getUsers();
		List<String> usernameList = new ArrayList<String>();
		for (MsUserVO userInfo : userList) {
			usernameList.add("\"" + userInfo.getUsername() + "\"");
		}
		model.addAttribute("usernameList", usernameList);
		// log.info(userMapper.getUsers().toString());

		return "/login/signuptest";
	}

	// 회원 가입을 처리하는 핸들러
	@PostMapping("/login/signup")
	public String signuptest(MsUserVO user) {
		// 비밀번호를 암호화하여 저장
		user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));

		// 사용자 정보와 권한 정보를 데이터베이스에 저장
		userMapper.insertUser(user);
		userMapper.insertAuthorities(user);

		return "index";
	}

	// 사용자 프로필 페이지로 이동하는 핸들러
	@GetMapping("/login/userprofile")
	public String userprofile() {
		log.info("userprofile");
		return "/myPage/myPage";
	}

	@GetMapping("/login/google-callback")
	public String googleCallback() {
		log.info("google-callback");
		return "/login/google-callback";
	}

	// 아이디 찾기
	@GetMapping("/login/idsearch")
	public String idSearch(MsUserVO user, Model model) {

		List<MsUserVO> userList = userMapper.getUsers();

		model.addAttribute("userList", userList);

		return "/login/idsearch";
	}

}
