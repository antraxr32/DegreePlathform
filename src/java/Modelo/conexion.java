package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion
{
    private final String baseDatos = "bdsys";
    //private final String servidor = "jdbc:mysql://192.168.1.73/" + baseDatos;
    private final String servidor = "jdbc:mysql://189.143.129.173/" + baseDatos;
    //private final String servidor = "jdbc:mysql://192.168.1.64/" + baseDatos;
    private final String usuario = "user2";
    private final String clave = "datatest96";
    
    public Connection conectar()
    {
        Connection cn = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(servidor, usuario, clave);
        }
        catch(Exception e)
        {
            System.out.println("Error al conectar" + e.getMessage());
        }
        return cn;
    }
            
}
