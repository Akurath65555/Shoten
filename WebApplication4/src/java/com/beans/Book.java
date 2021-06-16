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
import com.beans.*;
import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author Amatya Sharma
 */
public class Book {
    private String isbn;           
    private String title;   
    private String author;  
    private String pub;     //publisher
    private String cat;     //category need to change
    private String price;
    private String qty;
    private boolean isadded =false;
    /**
     * @return the isbn
     */
    public String getIsbn() {
        return isbn;
    }

    /**
     * @param isbn the isbn to set
     */
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * @param author the author to set
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * @return the pub
     */
    public String getPub() {
        return pub;
    }

    /**
     * @param pub the pub to set
     */
    public void setPub(String pub) {
        this.pub = pub;
    }

    /**
     * @return the cat
     */
    public String getCat() {
        return cat;
    }

    /**
     * @param cat the cat to set
     */
    public void setCat(String cat) {
        this.cat = cat;
    }
    
     public boolean getIsadded() {
        return isadded;
    }

    public void setIsadded(boolean isadded) {
        this.isadded = isadded;
    }
    
     public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }

    /**
     * @return the price
     */
    public String getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(String price) {
        this.price = price;
    }
    // Method to add a book into the Shoten repository
    public String add(User user)
    {
     Connection con = null;
     PreparedStatement ps = null;
     
     try
     {
      con = getConnection();
      ps = con.prepareStatement("INSERT INTO `trial_schema`.`sell_books` (`isbn`, `title`, `author`, `pub`, `cat`, `price`,`qty`,`uid`) VALUES (?, ?, ?, ?, ?, ?,?,?);");
      ps.setString(1, getIsbn());
      ps.setString(2, getTitle());
      ps.setString(3, getAuthor());
      ps.setString(4, getPub());
      ps.setString(5, getCat());
      ps.setString(6, getPrice());
      ps.setString(7, getQty());
      ps.setString(8, Integer.toString(user.getUserid()));
      
      ps.executeUpdate();
      setIsadded(true);
      return null;
    }
    catch(Exception ex)
    {
        return( ex.getMessage());
    }
    finally
    {
         clean(con,ps);
    } 

   }
    
    // Method to display books currently for sale or rent by the user
    public ArrayList<String[]> sold_books(User user){
        Connection con = null;
        PreparedStatement ps = null;
        ArrayList<String[]> List =new ArrayList<>();
        try
         {
        con = getConnection();
         ps = con.prepareStatement("SELECT * FROM trial_schema.sell_books where uid = ?");
         ps.setString(1, Integer.toString(user.getUserid()));
         
         ResultSet rs = ps.executeQuery();
         
         
         
     
         while(rs.next()){
                    String[] Books = new String[8];
                 Books[0]=rs.getString("isbn");
                 Books[1]=rs.getString("title");
                 Books[2]=rs.getString("author");
                 Books[3]=rs.getString("pub");
                 Books[4]=rs.getString("cat");
                 Books[5]=rs.getString("price");
                 Books[6]=rs.getString("qty");
                 Books[7]=rs.getString("sno");
                 
                 //System.out.println("ihihi");
                // System.out.println(Books[0]+" "+Books[1]+" "+Books[2]+" "+Books[3]+" "+Books[4]+" "+Books[5]+" "+Books[6]+" ");
                 List.add(Books);
             }//System.out.println();
             
             //List.add(rs.getString(i));
             return List;
                    //  String[] Book;
        /*for(int j=0;j<2;j++){Book = List.get(j);
             for(int i=0;i<6;i++){
                 System.out.println("  "+Book[i]);
             }
        */ 
        }
        catch(Exception ex)
         {
        System.out.println(ex.getMessage());
            }
        finally
        {
             clean(con,ps);
        } 
        return null;
    }
    // Method to update book information
    public String updateBook(){
           Connection con = null;
        PreparedStatement ps = null;
        
        try
         {
        con = getConnection();
         ps = con.prepareStatement("UPDATE sell_books set isbn = ? ,title=?,author = ? ,pub = ? , cat = ? ,price = ? ,qty = ? ");
         ps.setString(1, this.getIsbn());
         ps.setString(2, this.getTitle());
         ps.setString(3, this.getAuthor());
         ps.setString(4, this.getPub());
         ps.setString(5, this.getCat());
         ps.setString(6, this.getPrice());
         ps.setString(7, this.getQty());
         
         ps.executeUpdate();
        }
        catch(Exception ex)
         {
        return((ex.getMessage()));
            }
        finally
        {
             clean(con,ps);
        } 
        return null;
      
    }

        
        
    
    
    
    public ArrayList<String[]> browse_books(User user){
        Connection con = null;
        PreparedStatement ps = null;
        ArrayList<String[]> List =new ArrayList<>();
        try
         {
        con = getConnection();
         ps = con.prepareStatement("SELECT isbn,title,author,pub,cat,price,qty FROM trial_schema.sell_books where uid = ?");
         ps.setString(1, Integer.toString(user.getUserid()));
         
         ResultSet rs = ps.executeQuery();
         
         
         
     
         while(rs.next()){
                    String[] Books = new String[7];
                 Books[0]=rs.getString("isbn");
                 Books[1]=rs.getString("title");
                 Books[2]=rs.getString("author");
                 Books[3]=rs.getString("pub");
                 Books[4]=rs.getString("cat");
                 Books[5]=rs.getString("price");
                 Books[6]=rs.getString("qty");
                 
                 //System.out.println("ihihi");
                // System.out.println(Books[0]+" "+Books[1]+" "+Books[2]+" "+Books[3]+" "+Books[4]+" "+Books[5]+" "+Books[6]+" ");
                 List.add(Books);
             }//System.out.println();
             
             //List.add(rs.getString(i));
             return List;
                    //  String[] Book;
        /*for(int j=0;j<2;j++){Book = List.get(j);
             for(int i=0;i<6;i++){
                 System.out.println("  "+Book[i]);
             }
        */ 
        }
        catch(Exception ex)
         {
        System.out.println(ex.getMessage());
            }
        finally
        {
             clean(con,ps);
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

    
    
     public Connection getConnection() throws Exception {
         Class.forName("com.mysql.jdbc.Driver"); 
        // connect using Thin driver
        Connection con =   DriverManager.getConnection("jdbc:mysql://localhost:3306/trial_schema?useUnicode=true&characterEncoding=utf8",
		"root","root");
     return con;
    }
     
     /*public static void main(String[] args){
         Book newbook = new Book();
         ArrayList<String[]> newList = newbook.sold_books();
          System.out.println("ihihi");
             String[] Books;
             int i =0;
        for (String[] strArr : newList) {
			System.out.println(Arrays.toString(strArr));
		}
        while(i<2){
                Books = newList.get(i);
                System.out.println(Books[0]+" "+Books[1]+" "+Books[2]+" "+Books[3]+" "+Books[4]+" "+Books[5]+" "+Books[6]+" ");
                i++;
        }                     
     }*/
    

    
}
