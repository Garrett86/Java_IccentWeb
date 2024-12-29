package tw.com.kai.web.webbread.servlet;

import tw.com.kai.web.webbread.dao.Impl.ProductDaoImpI;
import tw.com.kai.web.webbread.dao.ProductDao;
import tw.com.kai.web.webbread.pojo.Bread;

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

        ProductDao dao = new ProductDaoImpI();
        Bread bread = new Bread();
        String status = req.getParameter("status");
        if(status.equals("addProduct")) {
//            System.out.println("addProduct");
            bread.setBreadImg(req.getParameter("image"));
            bread.setBreadName(req.getParameter("title"));
            bread.setPrice(req.getParameter("price"));
            bread.setSaleCount(req.getParameter("saleCount"));
            bread.setBreadCount(req.getParameter("breadCount"));
            dao.save(bread);

            String breadName = req.getParameter("title");
            List<Bread> list = dao.search(breadName);
            resp.setContentType("text/html;charset=UTF-8");
            req.setAttribute("list", list);
            req.getRequestDispatcher("/WEB-INF/page2/queryproduct.jsp").forward(req, resp);
        }else if(status.equals("findProduct")) {
           String breadName = req.getParameter("title");
            List<Bread> list = dao.search(breadName);
            resp.setContentType("text/html;charset=UTF-8");
            req.setAttribute("list",list);
            req.getRequestDispatcher("/WEB-INF/page2/queryproduct.jsp").forward(req, resp);
        }else if(status.equals("updateProduct")) {
            bread.setId(Integer.parseInt(req.getParameter("id")));
            bread.setBreadImg(req.getParameter("image"));
            bread.setBreadName(req.getParameter("title"));
            bread.setPrice(req.getParameter("price"));
            bread.setSaleCount(req.getParameter("saleCount"));
            bread.setBreadCount(req.getParameter("breadCount"));
            dao.update(bread);

            String breadName = req.getParameter("title");
            List<Bread> list = dao.search(breadName);
            req.setAttribute("list", list);
            resp.setContentType("text/html;charset=UTF-8");
            req.getRequestDispatcher("/WEB-INF/page2/queryproduct.jsp").forward(req, resp);

        }else if(status.equals("deleteProduct")){
            int id = Integer.parseInt(req.getParameter("id"));
            dao.delete(id);

            String breadName = req.getParameter("title");
            List<Bread> list = dao.search(breadName);
            resp.setContentType("text/html;charset=UTF-8");
            req.setAttribute("list", list);
            req.getRequestDispatcher("/WEB-INF/page2/queryproduct.jsp").forward(req, resp);
        }else{
            System.out.println("錯誤!!");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
