
package com.servlet;

import com.dao.PersonDao;
import com.databaseConnection.connectionProvider;
import com.entites.person;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "PersonServlet", urlPatterns = {"/PersonServlet"})
public class PersonServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String fullName = request.getParameter("name");
           String dob = request.getParameter("dob");
           String email = request.getParameter("email");
           String phoneNumber = request.getParameter("number");
           String gender = request.getParameter("gender");
           String occupation = request.getParameter("occupation");
           String idType = request.getParameter("idtype");
           String idNumber = request.getParameter("idnumber");
           String issuedBy = request.getParameter("issuedby");
           String issuedState = request.getParameter("issuedstate");
           String issuedDate = request.getParameter("issuedate");
           String expiryDate = request.getParameter("expirydate");
           String addressType = request.getParameter("address");
           String nationality = request.getParameter("nationality");
           String state = request.getParameter("state");
           String district = request.getParameter("distict");
           String block = request.getParameter("block");
           String ward = request.getParameter("ward");
           String fatherName = request.getParameter("fname");
           String fatherQualification = request.getParameter("fquali");
           String motherName = request.getParameter("mname");
           String motherQualification = request.getParameter("mquali");
           String siblingName = request.getParameter("sibling");
           String guardianName = request.getParameter("gname");
           
           person pr = new person(fullName, dob, email, phoneNumber, gender, occupation, idType, idNumber, issuedBy, issuedState, issuedDate, expiryDate, addressType, nationality, state, district, block, ward, fatherName, fatherQualification, motherName, motherQualification, siblingName, guardianName);
       
          PersonDao dao = new PersonDao(connectionProvider.getConnection());
          
          boolean f = dao.personSave(pr);
          
          HttpSession session = request.getSession();
          if(f){
              session.setAttribute("succmsg", "Register Successfully...");
              response.sendRedirect("index.jsp");
          }else{
              session.setAttribute("errormsg", "Not Submited Please check....");
              out.print("Error.....");
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
