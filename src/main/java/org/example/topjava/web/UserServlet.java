package org.example.topjava.web;

import org.example.topjava.LoggerWrapper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserServlet extends HttpServlet {
    
    private static final LoggerWrapper LOG = LoggerWrapper.get(UserServlet.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
       //req.getRequestDispatcher("/userList.jsp").forward(req, resp);

        LOG.debug("forward to userList");

        resp.sendRedirect("userList.jsp");
    }
}
