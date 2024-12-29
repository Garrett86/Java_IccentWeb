package tw.com.kai.web.webbread.servlet;

import tw.com.kai.web.webbread.dao.Impl.UserDaoV2Impl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Objects;
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().append("Served at: ").append(req.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname = req.getParameter("uname");
        String pwd = req.getParameter("pwd");

        UserDaoV2Impl userService = new UserDaoV2Impl();

        if (userService.validateUser(uname, pwd)) {
            HttpSession session = req.getSession();
            session.setAttribute("uname", uname);

            if (Objects.equals(uname, "root")) {
                resp.sendRedirect("success-backServlet");
            } else {
                resp.sendRedirect("LogServ");
            }
        } else {
            req.setAttribute("error", "Invalid username or password.");
            req.getRequestDispatcher("indexServlet").forward(req, resp);
        }
    }
}

