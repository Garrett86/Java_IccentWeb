package tw.com.kai.web.webbread.servlet;


import tw.com.kai.web.webbread.dao.Bread3Dao;
import tw.com.kai.web.webbread.dao.Impl.Bread3DaoImpI;
import tw.com.kai.web.webbread.pojo.Bread2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/breadSvle")
public class BreadServlet2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Bread3Dao dao = new Bread3DaoImpI();
        List<Bread2> list = dao.listBread2();
        req.setAttribute("breadsproduct3", list);
        req.getRequestDispatcher("/WEB-INF/page/shop3.jsp").forward(req, resp);
    }
}
