package edu.global.ex.modules;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class CustomAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
        User user = (User) authentication.getPrincipal();
        String username = user.getUsername(); // 사용자 이름
        // 사용자 이메일을 가져오는 코드 추가
        String email = ""; // 여기에 이메일을 가져오는 코드를 추가

        // 여기서 사용자 이름과 이메일을 처리하거나 다른 동작을 수행할 수 있습니다.

        super.onAuthenticationSuccess(request, response, authentication);
    }
}
