
package com.databaseConnection;
import java.sql.*;
/**
 *
 * @author Himanshu Kumar
 */
public class connectionProvider {
    private  static  Connection con;
    
    public static Connection getConnection(){
        try{
            if(con == null){
               Class.forName("com.mysql.cj.jdbc.Driver");
               
               String url = "jdbc:mysql://localhost:3306/employeeform";
               String username = "root";
               String  password = "26112002";
               
              con = DriverManager.getConnection(url,username,password);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return con;
    }
}
