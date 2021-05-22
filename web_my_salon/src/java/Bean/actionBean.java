/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ukdmp Kasun
 */
public class actionBean implements Serializable {

 
    private String action;
private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }
    
    private boolean state;

    

    

    
   
    public boolean validate() {

        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/saloon", "root", "");
        } catch (Exception e) {
            System.out.println("Connection error");
        }

        try {
            String sqlupdatereserve = "UPDATE reserved SET Status='"+action+"' where id ='" + id + "'";
         

           
            pst = con.prepareStatement(sqlupdatereserve);
            pst.execute();

            state = true;

        } catch (Exception e) {
            System.out.println("something went wrong");
            state = false;
        }

        return state;
    }

}
