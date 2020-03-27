package com.weichuang;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;


@WebServlet(name = "SaveUserLeave" , urlPatterns = "/saveUserLeave")
public class SaveUserLeaveServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String name = req.getParameter("name");//从前端表单数据中取得相应的值
        String email = req.getParameter("email");
        String message = req.getParameter("message");
        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog" , "root" , "root");
            String sql = "insert into t_user_leave (name , email , message) values (? , ? , ?)";//insert 表示插入一条数据，?表示占位符
            pstm = conn.prepareStatement(sql);
            pstm.setString(1 , name);
            pstm.setString(2 , email);
            pstm.setString(3 , message);
            int rows = pstm.executeUpdate();//更新方法。增加、修改、删除 rows : 数据库表中受影响的行数
            resp.setContentType("text/html;charset=utf-8");//向前端响应回数据时，中文乱码处理
            if(rows > 0){
                resp.getWriter().write("留言成功！");
            }else{
                resp.getWriter().write("留言失败！");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req , resp);
    }
}
