package DBConnection;

import java.sql.*;

public class DBConnection {

    Connection connection = null;

    public DBConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String name = "root";
            String password = "root";
            String DB_URL = "jdbc:mysql://localhost:3306/student";
            connection = DriverManager.getConnection(DB_URL, name, password);
            System.out.println("Database connected !!! ");

//            Statement stmt = connection.createStatement();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        DBConnection dbConnection = new DBConnection();
    }

//
//    public PreparedStatement getStatement(String query){
//        PreparedStatement pstm = null;
//        try{
//            pstm = this.connection.prepareStatement(query);
//        }
//        catch (Exception e){
//            e.printStackTrace();
//        }
//        return pstm;
//    }

    public PreparedStatement getStatement(String query) {
        PreparedStatement pstm = null;

        try {
            pstm = connection.prepareStatement(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pstm;
    }
}
