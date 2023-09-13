package edu.global.ex.controller;

import java.net.URI;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class ApiRestController {

	// application.properties에서 설정값을 가져오는 어노테이션
	@Value("${google.auth.url}")
	private String googleAuthUrl;

	@Value("${google.login.url}")
	private String googleLoginUrl;

	@Value("${google.client.id}")
	private String googleClientId;

	@Value("${google.redirect.url}")
	private String googleRedirectUrl;

	@Value("${google.secret}")
	private String googleClientSecret;

	// 구글 로그인 페이지 URL을 생성하고 리다이렉션하는 메서드
	@GetMapping(value = "/login/getGoogleAuthUrl")
	public ResponseEntity<?> getGoogleAuthUrl(HttpServletRequest request) throws Exception {

		// Google 로그인 페이지 URL 생성
		String reqUrl = googleLoginUrl + "/o/oauth2/v2/auth?client_id=" + googleClientId + "&redirect_uri="
				+ googleRedirectUrl + "&response_type=code&scope=email%20profile%20openid&access_type=offline";

		log.info("myLog-LoginUrl : {}", googleLoginUrl);
		log.info("myLog-ClientId : {}", googleClientId);
		log.info("myLog-RedirectUrl : {}", googleRedirectUrl);

		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(URI.create(reqUrl));

		// 로그인 페이지로 리다이렉션
		return new ResponseEntity<>(headers, HttpStatus.MOVED_PERMANENTLY);
	}

	// // 구글에서 리다이렉션된 콜백을 처리하는 메서드
	// @GetMapping(value = "/login/google-callback")
	// public ModelAndView oauth_google_check(HttpServletRequest request,
	// 		@RequestParam(value = "code") String authCode,
	// 		HttpServletResponse response, Model model) throws Exception {

	// 	// 1. 구글 OAuth 요청 객체 생성
	// 	GoogleOAuthRequest googleOAuthRequest = GoogleOAuthRequest.builder()
	// 			.clientId(googleClientId)
	// 			.clientSecret(googleClientSecret)
	// 			.code(authCode)
	// 			.redirectUri(googleRedirectUrl)
	// 			.grantType("authorization_code")
	// 			.scope("email profile openid") // 스코프 설정
	// 			.build();

	// 	RestTemplate restTemplate = new RestTemplate();

	// 	// 2. 토큰 요청을 보내고 토큰을 받음
	// 	ResponseEntity<GoogleLoginResponse> apiResponse = restTemplate.postForEntity(googleAuthUrl + "/token",
	// 			googleOAuthRequest, GoogleLoginResponse.class);

	// 	GoogleLoginResponse googleLoginResponse = apiResponse.getBody();

	// 	String googleToken = googleLoginResponse.getId_token();

	// 	// 3. 받은 토큰을 이용하여 유저 정보를 요청
	// 	String requestUrl = UriComponentsBuilder.fromHttpUrl(googleAuthUrl + "/tokeninfo")
	// 			.queryParam("id_token", googleToken).toUriString();

	// 	// 4. 허가된 토큰의 유저 정보를 결과로 받음
	// 	Map<String, Object> resultJson = (Map<String, Object>) restTemplate.getForObject(requestUrl, Map.class);

	// 	String email = (String) resultJson.get("email");

	// 	model.addAttribute("email", email);

	// 	ModelAndView mv = new ModelAndView();
	// 	mv.setViewName("/login/signuptest");
	// 	return mv;
	// }
}
