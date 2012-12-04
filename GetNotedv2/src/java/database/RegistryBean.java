/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.io.Serializable;
import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.ejb.Stateless;

/**
 *
 * @author aaronmeltzer
 */
@Stateless
public class RegistryBean implements Serializable{
    private String username;
    private String password;
    private String school;
    private String firstName;
    private String lastName;
    private String email;
    private String major;
    private String type;
    private String yearOfGraduation;
    private String department;
    private String[] buddies;
    private String[] courses;
    private String[] noteId;
    
    private String[] coures;
    public RegistryBean(){
        
    }
    public void getData(String username) throws SQLException{
        ConnectionManager cm = ConnectionManager.getManager();
        cm.loadDriver();
        String statement= "Select * From user Where username="+username;
        Connection c = cm.getConnection(); Statement stat=c.createStatement();
        ResultSet rs = stat.executeQuery(statement);
        this.username = getString("username", rs);
        this.password = getString("password", rs);
        this.school = getString("school", rs);
        this.email = getString("email", rs);
        this.firstName = getString("firstName", rs);
        this.lastName = getString("lastName", rs);
    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    public String getString(String name, ResultSet rs) throws SQLException{
       
        String[] tempArray = (String[])rs.getArray(name).getArray();
        return tempArray[0];
    }
    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getSchool() {
        return school;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmail() {
        return email;
    }

    public String[] getCoures() {
        return coures;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setCoures(String[] coures) {
        this.coures = coures;
    }
}
