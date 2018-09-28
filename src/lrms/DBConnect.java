/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lrms;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author Black-ish
 */
public class DBConnect {
    Connection connect;
    Connection Databaseconnect()
    {
        try{
        Class.forName("com.mysql.jdbc.Driver");
       connect= DriverManager.getConnection("jdbc:mysql://localhost:3306/lrms","root", "");
       // connect= DriverManager.getConnection("jdbc:mysql:apvstore.000webhostapp.com:3306/id3602649_lrms", "id3602649_root","Myhost@2018");
       //connect= DriverManager.getConnection("jdbc:mysql://www.000webhost.com/members/website/apvstore/database/id3602649_lrms","id3602649_root", "Myhost@2018"); 
       //https://www.000webhost.com/members/website/apvstore/database
      // https://apvstore.000webhostapp.com/
        
       // connect = DriverManager.getConnection("jdbc:mysql://remoteUri/id3602649_lrms", "id3602649_root", "Myhost@2018 ");
        
       System.out.println("Successfully Connnected to the Database");
        }
        catch(Exception e)
                {
                    JOptionPane.showMessageDialog(null,"Error connecting"+ e.getMessage());
                }
        return connect;
    }
}
