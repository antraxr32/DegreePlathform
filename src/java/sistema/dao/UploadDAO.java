package sistema.dao;
import java.sql.*;
import java.util.*;
import sistema.model.*;
import sistema.util.*;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class UploadDAO {
     private Connection connection;
     //un metodo constructor no regresa ningun tipo de dato e inicializa el objeto 
    public UploadDAO()
    {
        connection=Database.getConnection();
        
    }//fin del constructor
    
    public void addURLfromImageName(String archivo) 
    {
     try{        
        PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO Roles (url) VALUES (?);");
        preparedStatement.setString(1, archivo);
        preparedStatement.executeUpdate();
     }catch(SQLException e){
        e.printStackTrace();
     }  
    }
    
    public String getImageById(int urlId) {        
        String urlImagen=null;//variable local temporal
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select url from Roles where ID_Rol = ?;");
            preparedStatement.setInt(1, urlId);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
               urlImagen = rs.getString("url");               
            }
        } catch (SQLException e) {
           e.printStackTrace();
        }
       return urlImagen;
     }
    
}
