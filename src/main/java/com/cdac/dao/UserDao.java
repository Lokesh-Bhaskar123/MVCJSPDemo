package com.cdac.dao;
import com.cdac.pojo.*;
public interface UserDao {

	boolean checkUserCredentials(User user);
	boolean addNewuser(User user);
	
}
