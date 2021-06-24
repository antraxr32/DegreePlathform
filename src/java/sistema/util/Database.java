/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sistema.util;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author pmoreno
 */
public class Database {
    //metodo getConnection que ya existe dentro de la clase Connection
    public static Connection getConnection() {
       try {
           Class.forName("com.mysql.jdbc.Driver"); 
           /*Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistemaJSP? useTimezone "
            + "= true & serverTimezone = UTC", "root", "123456"); */
           /*Connection  con = DriverManager.getConnection("jdbc:mysql://192.168.1.64/sistemaJSP? useTimezone "
            + "= true & serverTimezone = UTC", "user2", "datatest96"); */
           Connection  con = DriverManager.getConnection("jdbc:mysql://189.143.129.173/sistemaJSP? useTimezone "
            + "= true & serverTimezone = UTC", "user2", "datatest96");
           return con;
        }
      
       catch(Exception ex) {
          System.out.println("Database.getConnection() Error -->" + ex.getMessage());
          return null;
        }
     
    }
    
    public static void close(Connection con) {
       try {
         con.close();
        }
       catch(Exception ex) {
        }
    }
}
