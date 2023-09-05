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

@WebServlet("/register")
public class MemberRegistrationServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private static final String DB_USER = "scott";
    private static final String DB_PASS = "tiger";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userId = request.getParameter("userId");
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        String password = request.getParameter("password");

        try {
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
            String insertQuery = "INSERT INTO ms_customer (cid, cpw, cname, cbirthdate, caddress) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setString(1, userId);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, name);
            preparedStatement.setString(4, birthday);
            preparedStatement.setString(5, address);

            preparedStatement.executeUpdate();
            
            preparedStatement.close();
            connection.close();

            response.sendRedirect("registration_complete.html"); // 회원 등록 성공 페이지로 리디렉션
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("registration_error.html"); // 회원 등록 실패 페이지로 리디렉션
        }
    }
}
