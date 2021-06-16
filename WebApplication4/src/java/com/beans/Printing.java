/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.beans;
import java.util.*;
import java.sql.*;
import  java.beans.*;
/**
 *
 * @author udit
 */
public class Printing {
    
    private String printDetails;
    private int pages;
    private int quotedPrice;
    private int bid;
    private int sid;
    private int reqStatus;
    
    
    
    
    public  void clean(Connection con, PreparedStatement ps){ 
   try{
        if ( ps != null )  ps.close();
        if ( con != null) con.close();
   }
    catch(Exception ex)
    { System.out.println(ex.getMessage()); }
 }

    
    
     public Connection getConnection() throws Exception {
         Class.forName("com.mysql.jdbc.Driver"); 
        // connect using Thin driver
        Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/trial_schema?useUnicode=true&characterEncoding=utf8",
		"root","root");
     return con;
    }

    /**
     * @return the printDetails
     */
    public String getPrintDetails() {
        return printDetails;
    }

    /**
     * @param printDetails the printDetails to set
     */
    public void setPrintDetails(String printDetails) {
        this.printDetails = printDetails;
    }

    /**
     * @return the pages
     */
    public int getPages() {
        return pages;
    }

    /**
     * @param pages the pages to set
     */
    public void setPages(int pages) {
        this.pages = pages;
    }

    /**
     * @return the estimatedPrice
     */
    public int getQuotedPrice() {
        return quotedPrice;
    }

    /**
     * @param quotedPrice the quotedPrice to set
     */
    public void setQuotedPrice(int quotedPrice) {
        this.quotedPrice = quotedPrice;
    }

    /**
     * @return the bid
     */
    public int getBid() {
        return bid;
    }

    /**
     * @param bid the bid to set
     */
    public void setBid(int bid) {
        this.bid = bid;
    }

    /**
     * @return the sid
     */
    public int getSid() {
        return sid;
    }

    /**
     * @param sid the sid to set
     */
    public void setSid(int sid) {
        this.sid = sid;
    }

    /**
     * @return the reqStatus
     */
    public int getReqStatus() {
        return reqStatus;
    }

    /**
     * @param reqStatus the reqStatus to set
     */
    public void setReqStatus(int reqStatus) {
        this.reqStatus = reqStatus;
        
    }
    // Method to send a print request by a user to a printing shop
    public String request_set(User user)
    {
        int flag=0;
        Connection con = null;
        PreparedStatement ps = null;
        
        try
        {
            
            con = getConnection();
            ps = con.prepareStatement("INSERT INTO `trial_schema`.`printlog` (`printDetails`, `quotedPrice`, `pages`, `bid`, `sid`, `reqStatus`) VALUES (?,?,?,?,?,?);");
            ps.setString(1,getPrintDetails());
            ps.setString(2,Integer.toString(getQuotedPrice()));
            ps.setString(3,Integer.toString(getPages()));
            ps.setString(4,Integer.toString(user.getUserid()));
            ps.setString(5,Integer.toString(getSid()));
            ps.setString(6,"0");
            ps.executeUpdate();
                     
            flag=1;
            
        }
        catch(Exception ex)
        {
           return(ex.getMessage());
        }
        finally
        {
            clean(con,ps);
            
        } 
        return Integer.toString(flag);
    }
    // Method to reject an order by print shop
    public void Cancel (String pid)
    {
        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement ps1 = null;
        try
        {
            con = getConnection();
            //ps = con.prepareStatement("SELECT * FROM trial_schema.printlog where pid= ? ");
            //ps.setString(1,pid);
            //ResultSet rs = ps.executeQuery();
            //if(rs.next())
            //{
                   ps1 = con.prepareStatement("UPDATE printlog SET reqStatus = ? WHERE pid = ?");
                   ps1.setString(1,Integer.toString(2) );
                   ps1.setString(2,pid);
                   ps1.executeUpdate();
           // }
            
            
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
        }
        finally
        {
            clean(con,ps);
            clean(con,ps1);
        }
    }
    // Method to show confirmation of order by print shop
     public void Confirm (String pid)
    {
        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement ps1 = null;
        try
        {
            con = getConnection();
            
                   ps1 = con.prepareStatement("UPDATE printlog SET reqStatus = ? WHERE pid = ?");
                   ps1.setString(1,Integer.toString(1) );
                   ps1.setString(2,pid);
                   ps1.executeUpdate();
           
            
            
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
        }
        finally
        {
            clean(con,ps);
            clean(con,ps1);
        }
    }
     
     public void addPrint(User user){//inssert a new request pulled by user into the printlog database
         
     Connection con = null;
     PreparedStatement ps = null;
     try
     {
      con = getConnection();
      ps = con.prepareStatement("INSERT INTO trial_schema.printlog (bid,sid,quotedPrice,printDetails,pages,reqStatus) VALUES(?,?,?,?,?,?)");
      ps.setString(1, Integer.toString(user.getUserid()));
      ps.setString(2, Integer.toString(getSid()));
      ps.setString(3, Integer.toString(getQuotedPrice()*getPages()));
      ps.setString(4, getPrintDetails());
      ps.setString(5, Integer.toString(getPages()));
      ps.setString(6, Integer.toString(0));
      ps.executeUpdate();

   
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
   
   /* public static void main(String[] args)
     {
         Printing obj = new Printing();
         obj.setPages(60);
         obj.setPrintDetails("entry of details");
         obj.setQuotedPrice(80);
         obj.setSid(9);

         obj.addPrint();
     }*/
    
}
