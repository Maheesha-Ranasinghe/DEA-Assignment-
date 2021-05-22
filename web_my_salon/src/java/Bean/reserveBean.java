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
public class reserveBean implements Serializable {

    private String name;
    private String time;
    private String phone;
private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    private boolean state;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

   
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
            String sqlupdatereserve = "UPDATE reserve SET availability='B', bookBy= '"+name+"', CustomerContact='" + phone + "'  where id='" + id + "'";
            String sql = "insert into reserved(time, name, contact)values('" + time + "','" + name + "','" + phone + "')";

           
            pst = con.prepareStatement(sqlupdatereserve);
            pst.execute();
            pst = con.prepareStatement(sql);
            pst.execute();

            state = true;

        } catch (Exception e) {
            System.out.println("something went wrong");
            state = false;
        }

        return state;
    }

}
