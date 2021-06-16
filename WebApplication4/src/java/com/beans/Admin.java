/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.beans;
import java.sql.*;
import java.util.*;

/**
 *
 * @author udit
 */
public class Admin {
    
    private String username;
    private String password;

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    // Method to remove Book from Shoten
     public void removeBook(String sno){
        
        Connection con = null;
        PreparedStatement ps = null;
       
       
        try
         {
            con = getConnection();
            ps = con.prepareStatement("DELETE FROM `trial_schema`.`sell_books` WHERE (`sno` = ?);");
            ps.setString(1, sno);
         //ps.setString(2, "1");
            ps.executeUpdate();
         
        
        }
        catch(Exception ex)
         {
            System.out.println(ex.getMessage());
         }
        finally
        {
             clean(con,ps);
        } 
        //return null;
    }
     
     // method to remove user from Shoten
    public void banUser(String userid) 
    {
        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement ps2 = null;
        
        try
        {
            con = getConnection();
            ps2=con.prepareStatement("DELETE FROM sell_books WHERE uid = ?");
            ps2.setString(1, userid);
            ps2.executeUpdate();
            ps = con.prepareStatement("DELETE FROM trial_schema.users WHERE userid = ?");
            ps.setString(1,userid);
            ps.executeUpdate();
        }
        catch(Exception ex)
        {
            System.out.println("ex.getMessage()");;
        }
        finally
        {
            clean(con,ps);
        }
    }
       
    // Method to close connection with database
    public  void clean(Connection con, PreparedStatement ps) 
 { 
   try
   { if ( ps != null )  ps.close();
     if ( con != null) con.close();
   }
    catch(Exception ex)
    { System.out.println(ex.getMessage()); }
 }

 public Connection getConnection() throws Exception
 {
   Class.forName("com.mysql.jdbc.Driver"); 
   // connect using Thin driver
   Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/trial_schema?useUnicode=true&characterEncoding=utf8",
		"root","root");
   return con;
 }    
    }
