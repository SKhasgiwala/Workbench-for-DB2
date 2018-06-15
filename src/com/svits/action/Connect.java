package com.svits.action;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/connect")
public class Connect extends HttpServlet
{
	protected void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try(PrintWriter out = resp.getWriter()){
			
		}
	}
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
}
