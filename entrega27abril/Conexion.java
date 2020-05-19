package entrega27abril;

import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {

    java.sql.Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String host = "127.0.0.1";
    String user = "root";
    String pass = "";
    String dtbs = "entornos";

    public Boolean realizarConexion(){

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String newConnectionURL = "jdbc:mysql://" + host + "/" + dtbs
                    + "?" + "user=" + user + "&password=" + pass;
            conn = (java.sql.Connection) DriverManager.getConnection(newConnectionURL);
            return true;
        }
        catch(SQLException | ClassNotFoundException ex)
        {
            System.out.println("Error la Base de Datos");
            ex.printStackTrace();
            return false;
        }
    }
    public void verConexion(){
        System.out.println(conn.toString());
    }

    public java.sql.Connection getConnection(){
        return conn;
    }

    public void cerrarConexion(){
        conn = null;
    }
    public void insercion(String nombre, String apellido, int edad, int telefono){
        Statement statement=null;
        try {
            statement= conn.createStatement();
            String query = "INSERT INTO %s (%s,%s,%s,%s) VALUES ('%s','%s',%d,%d)";
            boolean exito=statement.execute(String.format(query,SchemaDB.NOM_TABLA,SchemaDB.COL_NOM,SchemaDB.COL_APE,SchemaDB.COL_EDAD,SchemaDB.COL_TEL,
                    nombre,apellido,edad,telefono));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
