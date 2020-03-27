package com.weichuang;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * model2(servlet + jsp + javabean)
 */
public class BlogListServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");//处理前端传递过来的表单数据，中文乱码的问题
        Connection conn = null;//数据库连接对象
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");//数据库驱动
            //jdbc:mysql://  : 它为jdbc连接数据库的协议。localhost:3306/blog ：数据库的地址
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog" , "root" , "root");
            String sql = "select b.id, b.title, b.url from t_blog b";
            pstm = conn.prepareStatement(sql);//执行sql语句的对象
            rs = pstm.executeQuery();//执行查询语句 , 并返回执行结果集
            List<Blog> blogList = new ArrayList<>();//java基础里面的集合,可以封装多个数据
            while (rs.next()){  //循环结果集
                Blog blog = new Blog();
                blog.setId(rs.getInt("id"));//从数据库表中读取到相关的数据。且要做好数据类型匹配
                blog.setTitle(rs.getString("title"));
                blog.setUrl(rs.getString("url"));
                blogList.add(blog);//将blog对象存于集合中
            }
            req.setAttribute("blogList" , blogList); //向request域中存入key为blogList的value为blogList的集合对象数据
            req.getRequestDispatcher(req.getContextPath() + "/index.jsp").forward(req , resp);//req.getContextPath() ：获取应用路径,内部转发到/index.jsp
        } catch (ClassNotFoundException e) { //受检异常捕获
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally { //执行关闭对象操作
            if(null != rs){
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(null != pstm){
                try {
                    pstm.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            if(null != conn){
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req , resp);
    }
}
