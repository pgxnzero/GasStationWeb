package com.pgxn.webtest;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 用于为了Servlet能够传值回前台的Jsp要使用request.getRequestDispatcher("").forward(); 方法， 此方法要求必须处理IO异常要使用Servlet必须引入这个两个包
 * @author : pgxn
 **/
public class Register extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException {
        //固定部分，说明收到Get传过来的值，怎么处理，即使你的页面不用到Get去传值，最好也留个空方法在此
        doAction(request, response);
        //指明传输方向，下Post同
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException {
        //固定部分，说明收到Post传过来的值，怎么处理
        doAction(request, response);
    }

    private void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        request.setAttribute("username", username);
        request.setAttribute("password", password);
        try {
            request.getRequestDispatcher("ok.jsp").forward(request, response);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}