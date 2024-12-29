package tw.com.kai.web.webbread.servlet;

import tw.com.kai.web.webbread.dao.Impl.CartDaoImpI;
import tw.com.kai.web.webbread.pojo.CartItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/addToCart")
public class AddToCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 設置請求的字符編碼為 UTF-8
        req.setCharacterEncoding("UTF-8");

        //獲取商品資訊
        String productId = req.getParameter("productId");
        String productName = req.getParameter("productName");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        double price = Double.parseDouble(req.getParameter("price"));

        //創建新的購物車項目
        CartItem item = new CartItem();
        item.setProductId(productId);
        item.setProductName(productName);
        item.setQuantity(quantity);
        item.setPrice(price);

        // 從 session 中獲取購物車，如果沒有則新建
        HttpSession session = req.getSession();
        CartDaoImpI cart = (CartDaoImpI) session.getAttribute("cart");
        if (cart == null) {
            cart = new CartDaoImpI();
            session.setAttribute("cart", cart);
        }

        // 添加商品到購物車
//        CartDao dao = new CartDaoImpI();
        cart.addItem(item);

        // 重定向或返回結果
        resp.sendRedirect("cart.jsp");

    }
}
