/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Amatya Sharma
 */
public class PrintUser {
    private int puid;
    private String username;
    private String password;
    private String address;
    private String phonenum;
    private int ppp;
    private String email;
    private Boolean logged=false;
    private String name;

    /**
     * @return the puid
     */
    public int getPuid() {
        return puid;
    }

    /**
     * @param puid the puid to set
     */
    public void setPuid(int puid) {
        this.puid = puid;
    }

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

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the phonenum
     */
    public String getPhonenum() {
        return phonenum;
    }

    /**
     * @param phonenum the phonenum to set
     */
    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    /**
     * @return the ppp
     */
    public int getPpp() {
        return ppp;
    }

    /**
     * @param ppp the ppp to set
     */
    public void setPpp(int ppp) {
        this.ppp = ppp;
    }
    // Method to register a new user
    public String  registerUser()
 {
    Connection con = null;
    PreparedStatement ps = null;

    try
    {
        con = getConnection();
        
        ps = con.prepareStatement("INSERT INTO `trial_schema`.`print_user` ( `username`,`password`, `address`, `phonenum`,`ppp`,`email`,`name`) VALUES (?,? ,?,?,?,?,?);");
        //ps.setInt(1, '');
        ps.setString(1, getUsername());
        ps.setString(2, getPassword());
        ps.setString(3, getAddress());
        ps.setString(4, getPhonenum());
        ps.setInt(5, getPpp());
        ps.setString(6,getEmail());
        ps.setString(7,getName());
        
        ps.executeUpdate();
            setLogged(true);
        return null;
    }
    catch(Exception ex)
    {
       return ex.getMessage();
    }
    finally
    {  clean(con,ps);
        }
 }

    // Method to validate user login
     public void login()
    {
     Connection con = null;
     PreparedStatement ps = null;
     try
     {
      con = getConnection();
      ps = con.prepareStatement("SELECT * FROM trial_schema.print_user WHERE username = ? and password= ?");
      ps.setString(1, getUsername());
      ps.setString(2, getPassword());

      ResultSet rs = ps.executeQuery();

            setLogged(false);

      if ( rs.next())
      {         setPuid(rs.getInt("puid"));
                setEmail(rs.getString("email"));
                setAddress(rs.getString("address"));
                setPhonenum(rs.getString("phonenum"));
                setName(rs.getString("name"));
                setPpp(rs.getInt("ppp"));
                setLogged(true);
                
     }
   
  }
  catch(Exception ex)
  {
      System.out.println( ex.getMessage());
  }
  finally
  {
       clean(con,ps);
  } 
    }
     
     
     
 // Method to update user profile    
 public String updateProfile(String newpwd) 
 {
   Connection con = null;
   PreparedStatement ps= null;

   try
   {
     con = getConnection();
     String cmd = "UPDATE print_user SET email=?, phonenum  = ? , address =? ,ppp = ? ,name = ? ";
 
     if (! newpwd.equals(""))
         cmd += " , password = '" + newpwd + "'";
     
     cmd = cmd + " where puid  = ?";

     ps = con.prepareStatement(cmd);
     ps.setString(1, getEmail());
     ps.setString(2, getPhonenum());
     ps.setString(3, getAddress());
     ps.setString(4, Integer.toString(getPpp()));
     ps.setString(5, getName());
     ps.setString(6, Integer.toString(getPuid()));

     int cnt = ps.executeUpdate();
     if ( cnt==1 ) 
     {
        if ( ! newpwd.equals("") )
                setPassword(newpwd); 
        return null;
     }
     else
        return "Invalid User. Unable to update profile.";
      
  }
  catch(Exception ex)
  {
      System.out.println( ex.getMessage());
      return ex.getMessage();
  }
  finally
  {
       clean(con,ps);
  } 

 } // end of updateProfile
    
    
 public boolean isLogged()
 { return getLogged(); }
   
 // Method to close connection with the database     
 public  void clean(Connection con, PreparedStatement ps)
 { 
   try
   { if ( ps != null )  ps.close();
     if ( con != null) con.close();
   }
    catch(Exception ex)
    { System.out.println(ex.getMessage()); }
 }
// Method to make connection with database
 public Connection getConnection() throws Exception
 {
   Class.forName("com.mysql.jdbc.Driver"); 
   // connect using Thin driver
   Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/trial_schema?useUnicode=true&characterEncoding=utf8",
		"root","root");
   return con;
 }    

 

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the logged
     */
    public Boolean getLogged() {
        return logged;
    }

    /**
     * @param logged the logged to set
     */
    public void setLogged(Boolean logged) {
        this.logged = logged;
    }
    /*
    public static void main(String[] args){
        PrintUser user = new PrintUser();
        user.setUsername("name1");
        user.setPassword("pwd1");
        user.login();
        
        System.out.println(user.username+"  "+user.password+"  "+user.logged+"  "+user.address+"  "+user.email+"  "+user.phonenum+"  ");
    }*/

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
    

} // end of bean
  

    

