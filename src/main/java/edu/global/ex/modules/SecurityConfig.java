//package edu.global.ex.modules;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.oauth2.client.oidc.userinfo.OidcUserService;
//import org.springframework.security.oauth2.config.annotation.web.configuration.EnableOAuth2Client;
//import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
//
//@Configuration
//@EnableWebSecurity
//@EnableOAuth2Client
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
//    @Autowired
//    private OidcUserService oidcUserService;
//
//    @Bean
//    public AuthenticationSuccessHandler successHandler() {
//        return new CustomAuthenticationSuccessHandler();
//    }
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http
//            .authorizeRequests()
//                .antMatchers("/", "/login**").permitAll()
//                .anyRequest().authenticated()
//                .and()
//            .oauth2Login()
//                .userInfoEndpoint()
//                    .oidcUserService(oidcUserService)
//                    .and()
//                .successHandler(successHandler())
//                .and()
//            .logout()
//                .logoutSuccessUrl("/")
//                .permitAll();
//    }
//}
