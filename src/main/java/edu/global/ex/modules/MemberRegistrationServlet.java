package edu.global.ex.modules;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.log4jdbc.Log4jdbcProxyDataSource;

@WebServlet("/register")
public class MemberRegistrationServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database";
    private static final String DB_USER = "your_username";
    private static final String DB_PASS = "your_password";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // log4jdbc를 사용하여 데이터소스를 래핑
        Log4jdbcProxyDataSource dataSource = new Log4jdbcProxyDataSource(
                DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)
        );

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
            preparedStatement.executeUpdate();

            // 회원 정보를 request에 저장하여 registration_complete.jsp로 전달
            request.setAttribute("userId", userId);
            request.setAttribute("name", name);
            request.setAttribute("birthday", birthday);
            request.setAttribute("address", address);

            request.getRequestDispatcher("registration_complete.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
