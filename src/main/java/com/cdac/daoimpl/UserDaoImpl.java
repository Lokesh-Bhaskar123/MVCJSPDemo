package com.cdac.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cdac.connection.DbConnection;
import com.cdac.pojo.User;
import com.cdac.dao.UserDao;

public class UserDaoImpl implements UserDao {

	public boolean checkUserCredentials(User user) {
		try(Connection con=DbConnection.getDatabaseConnection()){
			PreparedStatement pst=con.prepareStatement("SELECT * FROM login WHERE username = ? and password = ?");
			
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.isBeforeFirst())
				return true;
			else
				return false;
		}catch (SQLException e) {
			e.printStackTrace();
			return false;
			}
		}
		
		public boolean addNewuser(User user) {
			
			try(Connection con = DbConnection.getDatabaseConnection()){
				
				PreparedStatement pst = 
						con.prepareStatement("INSERT INTO login VALUES(?,?)");
				
				pst.setString(1, user.getUsername());
				pst.setString(2, user.getPassword());
				
				int count = pst.executeUpdate();
				
				if(count > 0)
					return true;
				else
					return false;
				
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
	}
}
