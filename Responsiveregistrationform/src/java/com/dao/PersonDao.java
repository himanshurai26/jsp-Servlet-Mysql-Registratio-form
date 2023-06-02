
package com.dao;
import com.entites.person;
import java.sql.*;

/**
 *
 * @author Himanshu Kumar
 */
public class PersonDao {
    private final Connection con;

    public PersonDao(Connection con) {
        this.con = con;
    }
    
    public boolean personSave(person pr){
        boolean f = false;
        
        try{
            
        String q = "insert into person(FullName, DateofBirth, Email,  Contact, Gender, Occupation, IdType, IdNumber, IdAuthority, IssuedState, IssuedDate, ExpiryDate, AddressType, Nationality, State, District, Block, Ward, FatherName, FatherQualification, MotherName, MotherQualification, SiblingName, GuardianName) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
         PreparedStatement pstmt = con.prepareStatement(q);
         
      //   pstmt.setInt(1, pr.getId());
         pstmt.setString(1, pr.getFullName());
         pstmt.setString(2,pr.getDob());
         pstmt.setString(3, pr.getEmail());
         pstmt.setString(4, pr.getContact());
         pstmt.setString(5,pr.getGender());
         pstmt.setString(6,pr.getOccupation());
         pstmt.setString(7, pr.getIdType());
         pstmt.setString(8, pr.getIdNumber());
         pstmt.setString(9, pr.getIdAuthority());
         pstmt.setString(10, pr.getIssuedState());
         pstmt.setString(11, pr.getIssuedDate());
         pstmt.setString(12, pr.getExpiryDate());
         pstmt.setString(13,pr.getAddressType());
         pstmt.setString(14, pr.getNationality());
         pstmt.setString(15, pr.getState());
         pstmt.setString(16, pr.getDistrict());
         pstmt.setString(17, pr.getBlock());
         pstmt.setString(18, pr.getWard());
         pstmt.setString(19, pr.getFatherName());
         pstmt.setString(20, pr.getfQualification());
         pstmt.setString(21, pr.getMotherName());
         pstmt.setString(22, pr.getmQualification());
         pstmt.setString(23,pr.getSiblingName());
         pstmt.setString(24,pr.getgName());
         
       int i = pstmt.executeUpdate();
       
       if(i == 1){
           f = true;
       }
         
         
         
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return f;
    }
    
    
    
    
}
