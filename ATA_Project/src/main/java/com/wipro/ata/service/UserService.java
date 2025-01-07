package com.wipro.ata.service;

import java.util.List;

import com.wipro.ata.entity.Users;

public interface UserService {
	
	public List<Users> getAllUsers() ;
	public String addUser(Users user);
	public void updateUserById(Users user,int id);
	public Users getUserById(int id);
	public String getUser(String email , String password);
	public String changePassword( String oldPwd, String newPwd);
	

}
