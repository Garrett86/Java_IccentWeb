package tw.com.kai.web.webbread.other;

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

@WebServlet("/ShopOrd")
public class Shopping extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BreadDao dao = new BreadDaoImpl();
        List<Bread> list = dao.listBread();
        req.setAttribute("breadsproduct", list);
        req.getRequestDispatcher("/WEB-INF/page/shopingCart.jsp").forward(req, resp);
    }
}
