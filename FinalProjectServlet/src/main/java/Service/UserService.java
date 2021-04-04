package Service;

import DBConnection.DBConnection;
import Model.User;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    public User getUser(String username, String password) {
        User user = null;
        String query = "Select * from user where username = ? and password = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            pstm.setString(1, username);
            pstm.setString(2, password);

            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setRole(rs.getString("role"));
                user.setPassword(rs.getString("password"));
                user.setUsername(rs.getString("username"));
                user.setFull_name(rs.getString("full_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }


    public List<User> getUserList() {
        ArrayList<User> getuserList = new ArrayList<User>();
        String query = "Select * from user";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while(rs.next()){
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setRole(rs.getString("role"));
                user.setPassword(rs.getString("password"));
                user.setUsername(rs.getString("username"));
                user.setFull_name(rs.getString("full_name"));
                getuserList.add(user);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return getuserList;
    }
    public void insertUser(User user){
//        INSERT INTO `a`(`id`, `role`, `password`, `username`, `full_name`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]')
        String query = "insert into user (full_name,username,password,role) values(?,?,?,?)";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            pstm.setString(1, user.getFull_name());
            pstm.setString(2, user.getUsername());
            pstm.setString(3, user.getPassword());
            pstm.setString(4, user.getRole());
            pstm.execute();

        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void deleteUser(int id){
        String query = "delete from user where id = ? ";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try{
            pstm.setInt(1, id);
            pstm.execute();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public void editUser(int id, User user){
        String query = "update from user set full_name = ?,username = ?, role = ?, password = ?," + "where id= ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try{
            pstm.setString(1, user.getFull_name());
            pstm.setString(2, user.getUsername());
            pstm.setString(3, user.getPassword());
            pstm.setString(4, user.getRole());
            pstm.setInt(5, user.getId());
            pstm.execute();


        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
//annotation spring framework