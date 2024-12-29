package tw.com.kai.web.webbread.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/LogServ")
public class LoginIndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("uerN");
        req.getSession().setAttribute("uname", username);
        req.getRequestDispatcher("/WEB-INF/user/login_index.jsp").forward(req, resp);
    }
}
