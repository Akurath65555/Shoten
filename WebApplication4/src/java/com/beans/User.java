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
public class User {
    private  int userid;
    private  String uname;
    private  String pwd;
    private  String email;
    private  String address;
    private  String phone;
    
    private  boolean logged = false;
    
    
    public User(){
        uname=null;
    }

    /**
     * @return the userid
     */
    public int getUserid() {
        return userid;
    }

    /**
     * @param userid the userid to set
     */
    public void setUserid(int userid) {
        this.userid = userid;
    }

    /**
     * @return the uname
     */
    public String getUname() {
        return uname;
    }

    /**
     * @param uname the uname to set
     */
    public void setUname(String uname) {
        this.uname = uname;
    }

    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
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
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public void login()
    {
     Connection con = null;
     PreparedStatement ps = null;
     try
     {
      con = getConnection();
      ps = con.prepareStatement("SELECT userid,email,phone,address FROM trial_schema.users where uname = ? and pwd= ?");
      ps.setString(1, getUname());
      ps.setString(2, getPwd());

      ResultSet rs = ps.executeQuery();

            setLogged(false);

      if ( rs.next())
      {         setUserid(rs.getInt("userid"));
                setEmail(rs.getString("email"));
                setAddress(rs.getString("address"));
                setPhone(rs.getString("phone"));
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

 } // end of isValid



 public String updateProfile(String newpwd) 
 {
   Connection con = null;
   PreparedStatement ps= null;

   try
   {
     con = getConnection();
     String cmd = "update users set email=?, phone  = ? , address =? ";
 
     if (! newpwd.equals(""))
         cmd += " , pwd = '" + newpwd + "'";
     
     cmd = cmd + " where userid  = ?";

     ps = con.prepareStatement(cmd);
     ps.setString(1, getEmail());
     ps.setString(2, getPhone());
     ps.setString(3, getAddress());
     ps.setInt(4, getUserid());

     int cnt = ps.executeUpdate();
     if ( cnt==1 ) 
     {
        if ( ! newpwd.equals("") )
                setPwd(newpwd); 
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



 public String  registerUser()
 {
    Connection con = null;
    PreparedStatement ps = null;

    try
    {
        con = getConnection();
        //userid = getNextUserid(con);
        ps = con.prepareStatement("INSERT INTO `trial_schema`.`users` (`uname`, `pwd`, `email`, `address`, `phone`) VALUES (? ,? ,?,?,?);");
        //ps.setInt(1, '');
        ps.setString(1, getUname());
        ps.setString(2, getPwd());
        ps.setString(3, getEmail());
        ps.setString(4, getAddress());
        ps.setString(5, getPhone());
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

 public boolean isLogged()
 { return logged; }


 public int getNextUserid(Connection con)  throws Exception
 {
    PreparedStatement ps = null;
    ps = con.prepareStatement("select nvl( max(userid),0) + 1 from users");
    ResultSet rs = ps.executeQuery();
    rs.next();
    int nextuserid = rs.getInt(1);
    rs.close();

    return  nextuserid; 
     
 }
   
       
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

    /**
     * @param logged the logged to set
     */
    public void setLogged(boolean logged) {
        this.logged = logged;
    }

} // end of bean
  
