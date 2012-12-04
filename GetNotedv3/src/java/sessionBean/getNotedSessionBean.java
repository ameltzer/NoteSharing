/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionBean;

import entities.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

/**
 *
 * @author Jonathan
 */
@Stateless
@LocalBean
public class getNotedSessionBean {

    @PersistenceUnit
    EntityManagerFactory emf;
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public User checkUser(String username, String password) {
        String query = "SELECT userID FROM User WHERE username='" + username + "'";
        List<String> temp = emf.createEntityManager().createNativeQuery(query).getResultList();
            if (temp.size() <= 0)
                return null;
        User user = (User) emf.createEntityManager().find(User.class, temp.get(0));
        if (user != null) { 
            if (user.getPassword().equals(password)) {
                return user;
            }
            else {
                return null;
            }
        }
        else {
            return null;
        }
    }
     public void registerUser(HttpServletRequest request){
       String userAt[] = {"username", "password","firstName","lastName", "email","school"};
            String userVal[] = new String[6];
            
            String studentAt[]={"major","yearOfGraduation"};
            String studentVal[]=new String[2];
            String professorAttribute="";
            int i;
            for(i=0; i<userAt.length; i++){
                userVal[i]=request.getParameter(userAt[i]);
            }
            GeneralizedQueries.insert("user", userVal, userAt);
            if((request.getParameter("type")).equals("student")){
                for(i=0; i<studentAt.length; i++) studentVal[i]= request.getParameter(studentAt[i]);
                GeneralizedQueries.insert("student", studentVal, studentAt);

            }
            else{
                professorAttribute= request.getParameter("department");
                String pa[]= {"department"};
                String pv[]= {professorAttribute};
                GeneralizedQueries.insert("professor",pa, pv);
            }
        } 
}
