/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ukdmp Kasun
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
             Connection con=null;
              PreparedStatement pst=null;
              ResultSet rs=null;
              
              
           try{
           
             Class.forName("com.mysql.jdbc.Driver");
            con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/saloon","root",""); 
           
            String email=request.getParameter("email");
            String password=request.getParameter("pass");
            
            
             String sql="SELECT * FROM users WHERE email='"+email+"'";
         
               pst=con.prepareStatement(sql);
                rs = pst.executeQuery();
                
                 while(rs.next()){
                    
                
                if(rs.getString(6).equals(password)){
                    
                    if("password".equals(password)){
                    
                    Cookie c1=new Cookie("email",email);
                    Cookie c2=new Cookie("pass",password);
                    
                    
                    
                    response.addCookie(c1);
                    response.addCookie(c2);
                    }
                    
                 
                     
               HttpSession session1=request.getSession(true);  
                     session1.setAttribute("id",rs.getString(1));  
                    
                      HttpSession session2=request.getSession(true);  
                     session2.setAttribute("email",rs.getString(2)); 
                     
                     HttpSession session3=request.getSession(true);  
                     session3.setAttribute("type",rs.getString(4)); 
                     
                         HttpSession session4=request.getSession(true);  
                     session4.setAttribute("phone",rs.getString(5)); 
                        HttpSession session5=request.getSession(true);  
                     session5.setAttribute("name",rs.getString(3)); 
                     
                     String type = rs.getString(4);
                    String name = rs.getString(2);
                    
                    if("admin".equals(type)){
                      response.sendRedirect("Dashboard/dashboard.jsp");
                       
                                }
                  
                     else if ("user".equals(type)) {
                  response.sendRedirect("index.jsp");
                     
               
                
                
                 }
                }
                 
           
                 else   {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Your Password or Email were wrong!! Recheck And try Again ..')");
                    out.println("location='Auth/login.jsp';");
                    out.println("</script>");
                     
               
                
                
                 }
                out.println("<script type=\"text/javascript\">");
                    out.println("alert('Auth Failed try Again ..')");
                    out.println("location='Auth/login.jsp';");
                    out.println("</script>");
                 }
                out.println("<script type=\"text/javascript\">");
                    out.println("alert('Auth Failed try Again ..')");
                    out.println("location='Auth/login.jsp';");
                    out.println("</script>"); 
           }
           catch(Exception e){
               out.println(e);
                out.println("<script type=\"text/javascript\">");
                    out.println("alert('Auth Failed try Again ..')");
                    out.println("location='Auth/login.jsp';");
                    out.println("</script>");
           }
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
