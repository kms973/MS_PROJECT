package edu.global.ex.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClient;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClientService;
import org.springframework.security.oauth2.client.annotation.RegisteredOAuth2AuthorizedClient;
import org.springframework.security.oauth2.client.registration.ClientRegistration;
import org.springframework.security.oauth2.client.registration.ClientRegistrationRepository;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NaverController {

    // OAuth2 로그인 설정 정보와 클라이언트 서비스를 주입 받음
    private final ClientRegistrationRepository clientRegistrationRepository;
    private final OAuth2AuthorizedClientService authorizedClientService;

    // 생성자를 통해 의존성 주입
    @Autowired
    public NaverController(ClientRegistrationRepository clientRegistrationRepository,
            OAuth2AuthorizedClientService authorizedClientService) {
        this.clientRegistrationRepository = clientRegistrationRepository;
        this.authorizedClientService = authorizedClientService;
    }

    // "/user" 엔드포인트로 GET 요청이 오면 실행되는 메서드
    @GetMapping("/user")
    public String getUserInfo(Model model, @RegisteredOAuth2AuthorizedClient OAuth2AuthorizedClient authorizedClient,
            Authentication authentication) {
        // 사용자 인증 정보에서 OAuth2User 객체를 추출
        OAuth2User oauth2User = (OAuth2User) authentication.getPrincipal();

        // 사용자 정보를 가져올 때 사용할 사용자 이름 속성을 설정
        String userNameAttributeName = authorizedClient.getClientRegistration()
                .getProviderDetails()
                .getUserInfoEndpoint()
                .getUserNameAttributeName();

        // 사용자 정보를 저장할 Map을 생성
        Map<String, Object> userInfo = new HashMap<>();
        // 사용자 이름, 이메일, 생년월일, 전화번호 정보를 Map에 추가
        userInfo.put("name", oauth2User.getAttribute(userNameAttributeName));
        userInfo.put("email", oauth2User.getAttribute("email"));
        userInfo.put("birthday", oauth2User.getAttribute("birthday"));
        userInfo.put("phone", oauth2User.getAttribute("phone"));

        // Model을 사용하여 View (JSP)로 전달할 데이터를 설정
        model.addAttribute("userInfo", userInfo);

        // "user.jsp" 뷰로 이동
        return "user";
    }

    // "/login/naver" 엔드포인트로 GET 요청이 오면 실행되는 메서드
    @GetMapping("/login/naver")
    public String naverLogin(Model model) {
        // Naver를 위한 ClientRegistration 정보를 가져옴
        ClientRegistration clientRegistration = clientRegistrationRepository.findByRegistrationId("naver");
        // Model을 사용하여 뷰 (JSP)로 ClientRegistration 정보를 전달
        model.addAttribute("clientRegistration", clientRegistration);

        // "naver-login.jsp" 뷰로 이동
        return "naver-login";
    }
}
