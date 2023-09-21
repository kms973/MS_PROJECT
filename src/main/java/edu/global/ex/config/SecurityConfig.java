package edu.global.ex.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import edu.global.ex.security.MsCustomUserDetailsService;
import lombok.extern.slf4j.Slf4j;

@Configuration
@EnableWebSecurity
@Slf4j
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private MsCustomUserDetailsService customUserDetailsService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/css/**", "/js/**", "/images/**", "/lib/**", "/fonts/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable();

        http.authorizeRequests()
            .antMatchers("/user/**").hasAnyRole("USER")
            .antMatchers("/admin/**").hasAnyRole("ADMIN")
            .antMatchers("/**").permitAll();

        http.formLogin()
            .loginPage("/login")
            .defaultSuccessUrl("/")
            .successHandler((request, response, authentication) -> {
                // 권한에 따른 개별 URL 처리
                for (GrantedAuthority auth : authentication.getAuthorities()) {
                    if (auth.getAuthority().equals("ROLE_ADMIN")) {
                        response.sendRedirect("/admin/admin");
                        return;
                    }
                }
                response.sendRedirect("/");
            });

        http.logout().logoutSuccessUrl("/login");
    }
}
