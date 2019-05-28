/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package chitkara.controller;

import chitkara.dao.ComplaintDao;
import chitkara.dao.GatepassDao;
import chitkara.dao.UserDao;
import chitkara.operation.UserOperation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class GatepassController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            
            GatepassDao com=new GatepassDao();
           
            com.setUid(request.getParameter("uid"));
            com.setReason(request.getParameter("reason"));
            
              //com.setUser_type("User");
              //com.setPassword("123456");
              int i=UserOperation.gatepass(com);
                  
              if(i>0)
              {
                  HttpSession session = request.getSession(false);
                  session.setAttribute("message","Complaint Added Successfully");
                  response.sendRedirect("admin/gatepass.jsp"); 
              }
              else
              {
                  HttpSession session=request.getSession(false);
                  session.setAttribute("message","Complaint Not Added");
                  response.sendRedirect("gatepass.html");
              }
            
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
