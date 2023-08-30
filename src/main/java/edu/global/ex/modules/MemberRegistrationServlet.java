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

import oracle.jdbc.pool.OracleDataSource;

@WebServlet("/register")
public class MemberRegistrationServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
    private static final String DB_USER = "scott";
    private static final String DB_PASS = "tiger";

    private OracleDataSource dataSource;

    @Override
    public void init() throws ServletException {
        try {
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
                dataSource.close();
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
            String query = "INSERT INTO ms_customer (cid, cpw, cname, cbirthdate, caddress) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, userId);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, name);
            preparedStatement.setString(4, birthday);
            preparedStatement.setString(5, address);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.getRequestDispatcher("/registration_complete.jsp").forward(request, response);
    }

}
