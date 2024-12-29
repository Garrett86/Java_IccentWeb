package tw.com.kai.web.webbread.servlet;

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
        // 驗證使用者憑證
        if(validateUser(uname,pwd)){
            HttpSession session = req.getSession();
            session.setAttribute("uname",uname);
            if(Objects.equals(uname, "root")){
                resp.sendRedirect("success-backServlet");
            }else{
                resp.sendRedirect("LogServ");
            }
        }else{
            resp.sendRedirect("login.jsp?error=Invalid uname or pwd");
        }
    }
    private Boolean validateUser(String uname, String pwd){
        boolean isValue = false;
        // 資料庫連接參數
        String DbURL = "jdbc:mysql://127.0.0.1:3306/bread_mall";
        String DbUser = "root";
        String DbPwd = "Password";

        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DbURL, DbUser, DbPwd);
            String sql = "select * from bread_mall.t_user where uname=? and pwd=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, uname);
            ps.setString(2, pwd);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                isValue = true;
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isValue;
    }
}

