package tw.com.kai.web.webbread.servlet;

import tw.com.kai.web.webbread.dao.BreadDao;
import tw.com.kai.web.webbread.dao.Impl.BreadDaoImpl;
import tw.com.kai.web.webbread.pojo.Bread;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/breadServlet")
public class BreadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public BreadServlet() {

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BreadDao dao = new BreadDaoImpl();
        List<Bread> list = dao.listBread();
        request.setAttribute("breadsproduct", list);
        request.getRequestDispatcher("/WEB-INF/page/shop1.jsp").forward(request, response);
    }
}
