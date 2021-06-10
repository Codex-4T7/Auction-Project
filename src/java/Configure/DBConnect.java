/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Configure;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author khans
 */
public class DBConnect { 
    
    public static Connection takeConnection()
    {
    Connection con = null; 
        try{ 
            Class.forName("com.mysql.cj.jdbc.Driver");  
            String path = "jdbc:mysql://localhost:3306/auction";
            con = DriverManager.getConnection(path,"root","newrootpassword");    
        } 
        catch(Exception e)
        { 
            e.printStackTrace();
        } 
        return con;
    }
    
}
