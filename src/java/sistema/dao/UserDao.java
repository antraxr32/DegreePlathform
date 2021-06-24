/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.dao;
import java.sql.*;
import java.util.*;
import sistema.model.*;
import sistema.util.*;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
/**
 *
 * @author pmoreno
 */
public class UserDao {
    private Connection connection;
    
    
    //METODOS CONTSTRUCTIRES
    
    //un metodo constructor no regresa ningun tipo de dato e inicializa el objeto 
    public UserDao()
    {
        connection=Database.getConnection();
        
    }//fin del constructor
    
    //FIN 
    public void checkUser(User user){
        try{
            PreparedStatement ps = connection.prepareStatement("SELECT uname FROM usuarios WHERE uname = ?;");
            ps.setString(1, user.getUname());
            ResultSet rs = ps.executeQuery();
             if (rs.next()) // found
             {
                 //metodos
                 updateUser(user);
             } else {
                //metodo
                 addUser(user);
             }
         } catch (Exception ex) {
              System.out.println("Error in check() -->" + ex.getMessage());
             }
    } 
    
   public void addUser(User user) {
     try {
        
       PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO usuarios(uname,password,email,registeredon) VALUES (?, ?, ?, ?);");
       preparedStatement.setString(1, user.getUname());
       preparedStatement.setString(2, user.getPassword());
       preparedStatement.setString(3, user.getEmail());
       preparedStatement.setDate(4, new java.sql.Date(user.getRegisteredon().getTime()));
       preparedStatement.executeUpdate();
     }
     catch (SQLException e) {
     e.printStackTrace();
     }  
   }
   
   public void deleteUser(String userId) {
     try {
       PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM usuarios WHERE uname=?;");
       preparedStatement.setString(1, userId);
       preparedStatement.executeUpdate();
     }
     catch (SQLException e) {
        e.printStackTrace();
     }
    }
   
   public void updateUser(User user) {
     try {
         PreparedStatement preparedStatement = connection.prepareStatement("UPDATE usuarios SET password=?, email=? WHERE uname = ?;");
         preparedStatement.setString(1, user.getPassword());
         preparedStatement.setString(2, user.getEmail());
         //quitar la fecha porque es de solo lectura en user.jsp
         preparedStatement.setString(3, user.getUname());
         preparedStatement.executeUpdate();
      } catch (SQLException e) {
         e.printStackTrace();
      }
    }
   
   public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from usuarios");
            while (rs.next()) {
            User user = new User();
            user.setUname(rs.getString("uname"));
            user.setPassword(rs.getString("password"));
            user.setEmail(rs.getString("email"));
            user.setRegisteredon(rs.getDate("registeredon"));
            users.add(user);
            }
        } catch (SQLException e) {
          e.printStackTrace();
        }
        return users;
      }

      public User getUserById(String userId) {
        User user = new User();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM usuarios WHERE uname = ?;");
            preparedStatement.setString(1, userId);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
               user.setUname(rs.getString("uname"));
               user.setPassword(rs.getString("password"));
               user.setEmail(rs.getString("email"));
               user.setRegisteredon(rs.getDate("registeredon"));
            }
        } catch (SQLException e) {
           e.printStackTrace();
        }
       return user;
     }
}
