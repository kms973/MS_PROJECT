package edu.global.ex.controller;

import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/user")
    public String user(Model model, OAuth2AuthenticationToken authentication) {
        OAuth2User oAuth2User = authentication.getPrincipal();

        String email = oAuth2User.getAttribute("email");
        String name = oAuth2User.getAttribute("name");
        String phoneNumber = oAuth2User.getAttribute("phone_number");
        String address = oAuth2User.getAttribute("address");

        model.addAttribute("email", email);
        model.addAttribute("name", name);
        model.addAttribute("phoneNumber", phoneNumber);
        model.addAttribute("address", address);

        return "user";
    }
}