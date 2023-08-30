package edu.global.ex.modules;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.jdbc.pool.OracleDataSource; // 오라클 JDBC 클래스를 임포트합니다.

@WebServlet("/register")
public class MemberRegistrationServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:oracle:thin:@localhost:1521:your_database";
    private static final String DB_USER = "your_username";
    private static final String DB_PASS = "your_password";

    private OracleDataSource dataSource; // OracleDataSource 객체를 사용할 변수 선언

    @Override
    public void init() throws ServletException {
        try {
            // OracleDataSource 객체를 생성하고 연결 정보 설정
            dataSource = new OracleDataSource();
            dataSource.setURL(DB_URL);
            dataSource.setUser(DB_USER);
            dataSource.setPassword(DB_PASS);
        } catch (SQLException e) {
            throw new ServletException("Failed to initialize Oracle DataSource", e);
        }
    }

    @Override
    public void destroy() {
        if (dataSource != null) {
            try {
                dataSource.close(); // 데이터 소스 닫기
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        String password = request.getParameter("password");

        try (Connection conn = dataSource.getConnection()) {
            String query = "INSERT INTO members (user_id, name, birthday, address, password) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, userId);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, birthday);
            preparedStatement.setString(4, address);
            preparedStatement.setString(5, password);
            preparedStatement.executeUpdate(); // 데이터베이스에 데이터 추가

            // 요청 속성 설정
            request.setAttribute("userId", userId);
            request.setAttribute("name", name);
            request.setAttribute("birthday", birthday);
            request.setAttribute("address", address);

            // JSP 페이지로 포워딩
            request.getRequestDispatcher("registration_complete.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
