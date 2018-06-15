package com.svits.action;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.ibm.db2.jcc.am.SqlIntegrityConstraintViolationException;
import com.svits.dao.DBMan;

@WebServlet("/contact")
public class Contact extends HttpServlet
{
	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try(PrintWriter out = resp.getWriter()){
			resp.setContentType("text/html");
			String email = req.getParameter("email");
			String fname = req.getParameter("fname");
			String lname = req.getParameter("lname");
			String con = req.getParameter("phone");
			String msg = req.getParameter("message");
			try{
				if(DBMan.contact(email, fname, lname, con, msg)==1){
					resp.sendRedirect("index.jsp?msg=conscs");
				}
			}
			catch(Exception e){
					e.printStackTrace();
					resp.sendRedirect("error.jsp?msg=confld");
			}
			
		}
	}
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
}
