package tw.com.kai.web.webbread.servlet;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import tw.com.kai.web.webbread.dao.Impl.ProductDaoImpI;
import tw.com.kai.web.webbread.dao.ProductDao;
import tw.com.kai.web.webbread.pojo.Bread;
import tw.com.kai.web.webbread.utils.MyBatisUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/productServlet")
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 設置請求的字符編碼為 UTF-8
        req.setCharacterEncoding("UTF-8");

        SqlSessionFactory sqlSessionFactory = MyBatisUtil.getSqlSessionFactory();
        try (SqlSession session = sqlSessionFactory.openSession()) {
            ProductDao dao = session.getMapper(ProductDao.class);
            Bread bread = new Bread();
            String status = req.getParameter("status");

            switch (status) {
                case "addProduct":
                    bread.setBreadImg(req.getParameter("image"));
                    bread.setBreadName(req.getParameter("title"));
                    bread.setPrice(req.getParameter("price"));
                    bread.setSaleCount(req.getParameter("saleCount"));
                    bread.setBreadCount(req.getParameter("breadCount"));
                    dao.save(bread);
                    session.commit();  // 提交事務

                    String breadName = req.getParameter("title");
                    List<Bread> list = dao.search(breadName);
                    req.setAttribute("list", list);
                    req.getRequestDispatcher("/WEB-INF/page2/queryproduct.jsp").forward(req, resp);
                    break;

                case "findProduct":
                    breadName = req.getParameter("title");
                    list = dao.search(breadName);
                    req.setAttribute("list", list);
                    req.getRequestDispatcher("/WEB-INF/page2/queryproduct.jsp").forward(req, resp);
                    break;

                case "updateProduct":
                    bread.setId(Integer.parseInt(req.getParameter("id")));
                    bread.setBreadImg(req.getParameter("image"));
                    bread.setBreadName(req.getParameter("title"));
                    bread.setPrice(req.getParameter("price"));
                    bread.setSaleCount(req.getParameter("saleCount"));
                    bread.setBreadCount(req.getParameter("breadCount"));
                    dao.update(bread);
                    session.commit();  // 提交事務

                    breadName = req.getParameter("title");
                    list = dao.search(breadName);
                    req.setAttribute("list", list);
                    req.getRequestDispatcher("/WEB-INF/page2/queryproduct.jsp").forward(req, resp);
                    break;

                case "deleteProduct":
                    int id = Integer.parseInt(req.getParameter("id"));
                    dao.delete(id);
                    session.commit();  // 提交事務

                    breadName = req.getParameter("title");
                    list = dao.search(breadName);
                    req.setAttribute("list", list);
                    req.getRequestDispatcher("/WEB-INF/page2/queryproduct.jsp").forward(req, resp);
                    break;

                default:
                    System.out.println("錯誤!!");
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
