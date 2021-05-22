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
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ukdmp Kasun
 */
@WebServlet(name = "updatePassword", urlPatterns = {"/updatePassword"})
public class updatePassword extends HttpServlet {

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
           
            
            HttpSession session1=request.getSession(false);  
            String id=(String)session1.getAttribute("id"); 
            String npass = request.getParameter("pass1"); 
            String newPass1 = request.getParameter("pass2"); 
           
    
           
             if(npass.equals(newPass1))
            {
                 
                  String sql="UPDATE admin SET password='"+npass+"' where id='"+id+"'";
                   pst=con.prepareStatement(sql);
                    pst.execute();
                   out.println("<script type=\"text/javascript\">");
                    out.println("alert('Password Changed!!');");
                    out.println("location='./LogOut';");
                    out.println("</script>");
                   
                 }
                else
                
            {
             out.println("<script type=\"text/javascript\">");
                    out.println("alert('Passwords Didnt Match!!!');");
                    out.println("location='./LogOut';");
                    out.println("</script>");
            }
            }   
        
           
            
           
           catch (SQLException | ClassNotFoundException ex) {
                 Logger.getLogger(updatePassword.class.getName()).log(Level.SEVERE, null, ex);
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
        //processRequest(request, response);
        
        
         
                 
    
        
        
        
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
