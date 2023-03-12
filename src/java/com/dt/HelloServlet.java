/*
 * HelloServlet.java
 *
 * Created on October 7, 2006, 11:04 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */
package com.dt;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
/* * * @author Mustafa */
public class HelloServlet extends HttpServlet {
    protected void processRequest (HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Hello Servlet</h1>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        processRequest (request,response);        
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
        processRequest(request, response);
    }}
    