package tw.com.kai.web.webbread.servlet;

import tw.com.kai.web.webbread.dao.Bread2Dao;
import tw.com.kai.web.webbread.dao.Impl.Bread2DaoImpl;
import tw.com.kai.web.webbread.pojo.Bread1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/breadSvl")
public class BreadServlet1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Bread2Dao dao = new Bread2DaoImpl();
        List<Bread1> list = dao.listBread1();
        req.setAttribute("breadsproduct2", list);
        req.getRequestDispatcher("/WEB-INF/page/shop2.jsp").forward(req, resp);
    }
}
