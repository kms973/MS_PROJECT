<<<<<<< HEAD
<<<<<<< HEAD:src/main/java/edu/global/ex/modules/GoogleLoginModule.java
package edu.global.ex.modules;
=======
package edu.global.ex.controller;
>>>>>>> parent of 57a61c5 (모듈수정):src/main/java/edu/global/ex/controller/GoogleLoginModule.java
=======
package edu.global.ex.controller;
>>>>>>> parent of 57a61c5 (모듈수정)

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value; // 추가
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;

@SpringBootApplication
@Controller
@CrossOrigin(origins = "http://localhost:8008")
<<<<<<< HEAD
<<<<<<< HEAD:src/main/java/edu/global/ex/modules/GoogleLoginModule.java
public class GoogleLoginModule {
=======
public class GoogleLoginModule { // 클래스 이름 변경
>>>>>>> parent of 57a61c5 (모듈수정):src/main/java/edu/global/ex/controller/GoogleLoginModule.java
=======
public class GoogleLoginModule { // 클래스 이름 변경
>>>>>>> parent of 57a61c5 (모듈수정)

    @Value("${google.client.id}") // Google 클라이언트 ID 주입
    private String GOOGLE_CLIENT_ID;

    @Autowired
    private UserRepository userRepository;

    public static void main(String[] args) {
        SpringApplication.run(GoogleLoginModule.class, args);
    }

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/api/google-login")
    @ResponseBody
    public ApiResponse googleLogin(@RequestBody GoogleLoginRequest request) {
        HttpTransport transport = new NetHttpTransport();
        JsonFactory jsonFactory = JacksonFactory.getDefaultInstance();
        GoogleIdTokenVerifier verifier = new GoogleIdTokenVerifier.Builder(transport, jsonFactory)
                .setAudience(Collections.singletonList(GOOGLE_CLIENT_ID))
                .build();

        try {
            GoogleIdToken idToken = verifier.verify(request.getId_token());
            if (idToken != null) {
                GoogleIdToken.Payload payload = idToken.getPayload();
                String email = payload.getEmail();

                User user = userRepository.findByEmail(email);

                if (user == null) {
                    user = new User();
                    user.setEmail(email);
                    userRepository.save(user);
                }

                return new ApiResponse(true, "로그인 성공");
            } else {
                return new ApiResponse(false, "로그인 실패: 유효하지 않은 토큰");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ApiResponse(false, "로그인 오류");
        }
    }

    static class GoogleLoginRequest {
        private String id_token;

        public String getId_token() {
            return id_token;
        }

        public void setId_token(String id_token) {
            this.id_token = id_token;
        }
    }

<<<<<<< HEAD
<<<<<<< HEAD:src/main/java/edu/global/ex/modules/GoogleLoginModule.java
=======
    @Repository
>>>>>>> parent of 57a61c5 (모듈수정):src/main/java/edu/global/ex/controller/GoogleLoginModule.java
=======
    @Repository
>>>>>>> parent of 57a61c5 (모듈수정)
    public interface UserRepository extends JpaRepository<User, Long> {
        User findByEmail(String email);
    }

    static class ApiResponse {
        private boolean success;
        private String message;

        public ApiResponse(boolean success, String message) {
            this.success = success;
            this.message = message;
        }

        public boolean isSuccess() {
            return success;
        }

        public String getMessage() {
            return message;
        }
    }
}
