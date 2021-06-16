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
import java.util.ArrayList;
import static javafx.application.Platform.exit;

/**
 *
 * @author Amatya Sharma
 */
public class ShoppingCart {
    
    public void addItem(String sno,User user){
        
        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement ps1 = null;
        
        PreparedStatement ps2 = null;
       String[] Books = new String[9];
       
        try
         {
        con = getConnection();
         ps = con.prepareStatement("SELECT isbn,title,author,pub,cat,price,qty,uid FROM trial_schema.sell_books where sno = ?");
         ps.setString(1, sno);
         
         ResultSet rs = ps.executeQuery();
         
         if(rs.next()){
                    
                 Books[0]=rs.getString("isbn");
                 Books[1]=rs.getString("title");
                 Books[2]=rs.getString("author");
                 Books[3]=rs.getString("pub");
                 Books[4]=rs.getString("cat");
                 Books[5]=rs.getString("price");
                 Books[6]=rs.getString("qty");
                 Books[7]=rs.getString("uid");
                 Books[8]=Integer.toString(user.getUserid());
                
                int qtty = rs.getInt("qty");
                    if(qtty>1){
                    ps1 = con.prepareStatement("UPDATE sell_books SET qty = qty-1 WHERE sno = ?");
                    ps1.setString(1,sno);
                    //ps2.setString(2, Books[1]);

                    ps1.executeUpdate();
                 }
                    else{
                        ps1 = con.prepareStatement("DELETE FROM sell_books WHERE sno = ?");
                        ps1.setString(1,sno);
                   
                        ps1.executeUpdate();
                    }
    
             }
         
          ps2 = con.prepareStatement("INSERT INTO `trial_schema`.`buy_books` (`isbn`, `author`, `title`, `pub`, `cat`, `price`, `qty`, `suid`, `buid`, `isincart`) VALUES (?,?,?,?,?,?,?,?,?,?);");
          ps2.setString(1,Books[0]);
          ps2.setString(2,Books[1]);
          ps2.setString(3,Books[2]);
          ps2.setString(4,Books[3]);
          ps2.setString(5,Books[4]);
          ps2.setString(6,Books[5]);
          ps2.setString(7,"1");
          ps2.setString(8,Books[7]);
          ps2.setString(9,Books[8]);
          ps2.setString(10,Integer.toString(1));
          
          ps2.executeUpdate();
          //return ( Books[0]+"  "+Books[1]+"  "+Books[2]+"  "+Books[3]+"  "+Books[4]+"  ");
        }
        catch(Exception ex)
         {
        System.out.println(ex.getMessage());
            }
        finally
        {
             clean(con,ps);clean(con,ps2);
        } 
        //return null;
    }
    
    
    
    
    
    
    
    
    public ArrayList<String[]> listOrder(User user){
        
        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement ps2 = null;
        PreparedStatement ps3 =null;
       
       ArrayList<String[]> Orders = new ArrayList<>();
        try
         {
        con = getConnection();
         ps = con.prepareStatement("SELECT sno,isbn,title,author,pub,cat,price,qty,suid,isincart FROM trial_schema.buy_books where buid = ?");
         ps.setString(1, Integer.toString(user.getUserid()));
         
         ResultSet rs = ps.executeQuery();
         
         
         while(rs.next()){
             String[] Books = new String[9];
                 int flag = rs.getInt("isincart");
                 if(flag==1){
                    Books[0]=rs.getString("sno");
                    Books[1]=rs.getString("isbn");
                    Books[2]=rs.getString("title");
                    Books[3]=rs.getString("author");
                    Books[4]=rs.getString("pub");
                    Books[5]=rs.getString("cat");
                    Books[6]=rs.getString("price");
                    Books[7]=rs.getString("qty");
                    Books[8]=rs.getString("suid");
                    Orders.add(Books);
                    /*
                    int qtty = rs.getInt("qty");
                    if(qtty!=1){
                    ps2 = con.prepareStatement("UPDATE sell_books SET qty = qty-1 WHERE uid = ? and isbn = ?");
                    ps2.setString(1,Books[8]);
                    ps2.setString(2, Books[1]);

                    ps2.executeUpdate();
                 }
                    else{
                        ps2 = con.prepareStatement("DELETE FROM sell_books WHERE uid = ? and isbn = ?");
                    ps2.setString(1,Books[8]);
                    ps2.setString(2, Books[1]);
                    ps2.executeUpdate();
                    }
                    
                        */
                    
                 }
                 
                 
                // System.out.println(Books[0]+" "+Books[1]+" "+Books[2]+" "+Books[3]+" "+Books[4]+" "+Books[5]+" "+Books[6]+" "+Books[7]+" "+Books[8]+" ");
    
             }
         return Orders;
         
          
        }
        catch(Exception ex)
         {
        System.out.println(ex.getMessage());
            }
        finally
        {
             clean(con,ps);clean(con,ps2);clean(con,ps3);
        } 
        return null;
    }

    

    public  void clean(Connection con, PreparedStatement ps){ 
   try{
        if ( ps != null )  ps.close();
        if ( con != null) con.close();
   }
    catch(Exception ex)
    { System.out.println(ex.getMessage()); }
 }
    
    
    
    
    
    
    public void checkout(User user){
        
        Connection con = null;
        PreparedStatement ps = null;
       // PreparedStatement ps2 = null;
       //String[] Books = new String[9];
       
        try
         {
        con = getConnection();
         ps = con.prepareStatement("SELECT sno FROM `trial_schema`.`buy_books` WHERE (`buid` = ?);");
         
         ps.setString(1, Integer.toString(user.getUserid()));
         //ps.setString(2, "1");
         ResultSet rs = ps.executeQuery();
         
         while(rs.next()){
             PreparedStatement ps2 = con.prepareStatement("UPDATE `trial_schema`.`buy_books` SET `isincart` = '0' WHERE (`sno` = ?);");
             ps2.setString(1, rs.getString("sno"));
             ps2.executeUpdate();
         }
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
    
    
    public void remove(String sno){
        
        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement ps1 = null;
        PreparedStatement ps2 =null;
        PreparedStatement ps3 =null;
        ResultSet rs =null;
        ResultSet rs3 =null;
       
       
        try
         {
        con = getConnection();
         ps = con.prepareStatement("SELECT * FROM buy_books WHERE sno = ?;");//search book in sell_book databse
         ps.setString(1, sno);
        // System.out.println("error");
         rs = ps.executeQuery();
         if(rs.next()){
         System.out.println("Print1:" +rs.getString("sno")+" "+rs.getString("isbn")+" "+rs.getString("suid")+" "+rs.getString("title")+" "+rs.getString("qty"));
         
         //System.out.println("error");
         ps3= con.prepareStatement("SELECT * FROM sell_books WHERE isbn = ? and uid = ?");//search for a in buy book databse corresponding to previous search
         ps3.setString(1, rs.getString("isbn"));
         ps3.setString(2, rs.getString("suid"));
         System.out.println("error1");
         rs3 = ps3.executeQuery();//System.out.println("error");
         //rs3.next();
         //System.out.println("Print2:" +rs3.getString("sno")+" "+rs3.getString("isbn")+" "+rs3.getString("uid")+" "+rs3.getString("title")+" "+rs3.getString("qty"));
         System.out.println(rs3);
         //int qtty = rs3.getInt("qty");      // get quantity of book
          
         if(rs3.next()){//if book is not there add new entry
               int qtty = rs3.getInt("qty");qtty++;//System.out.println(qtty+" "+rs3.getString("sno"));
                    ps1 = con.prepareStatement("UPDATE sell_books SET `qty` =? WHERE `sno` = ?");
                    ps1.setString(1,Integer.toString(qtty));
                    ps1.setString(2,rs3.getString("sno"));
                    
                    
                    

                    ps1.executeUpdate();
                    }
         
                  
                    else{
                    System.out.println("error1\n");
                             System.out.println("Print1:" +rs.getString("sno")+" "+rs.getString("isbn")+" "+rs.getString("suid")+" "+rs.getString("title")+" "+rs.getString("qty"));

                        ps1 = con.prepareStatement("INSERT INTO sell_books  (isbn , title, author, pub, cat, qty ,price,uid) VALUES (? ,? , ? , ? , ? ,? ,?,?);");
                        ps1.setString(1,rs.getString("isbn"));
                        ps1.setString(2,rs.getString("title"));
                        ps1.setString(3,rs.getString("author"));
                        ps1.setString(4,rs.getString("pub"));
                        ps1.setString(5,rs.getString("cat"));
                        ps1.setString(6,rs.getString("qty"));
                        ps1.setString(7,rs.getString("price"));
                        ps1.setString(8,rs.getString("suid"));
                        
                        
                   
                        ps1.executeUpdate();}
                     
                    
                    
                    ps2 =con.prepareStatement("DELETE FROM buy_books WHERE sno = ?");
                    ps2.setString(1, sno);
                    
                    ps2.executeUpdate();
         
        
         
         
         
        
        }}
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

    /*
    public void clear(String sno){
        
        Connection con = null;
        PreparedStatement ps = null;
       
       
        try
         {
        con = getConnection();
         ps = con.prepareStatement("DELETE FROM `trial_schema`.`buy_books` WHERE (`suid` = ?);");
         ps.setString(1, Integer.toString(Log.loggedin_uid));
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
    }*/
    
     public Connection getConnection() throws Exception {
         Class.forName("com.mysql.jdbc.Driver"); 
        // connect using Thin driver
        Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/trial_schema?useUnicode=true&characterEncoding=utf8",
		"root","root");
     return con;
    }
     
     /*public static void main(String[] args){
         ShoppingCart cart = new ShoppingCart();
         cart.remove(Integer.toString(65));
     }*/
}
