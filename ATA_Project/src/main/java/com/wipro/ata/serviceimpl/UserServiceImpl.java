package com.wipro.ata.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.ata.entity.Users;
import com.wipro.ata.repositary.UserRepo;
import com.wipro.ata.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserRepo userRepo;
	
	
	int id = 0; // user id who logs in
	String role = "";

	public boolean adminAuthentication() {
		if(role.equals("ADMIN")) {
			return true;
		}else {
			return false;
		}
		
	}
	
	@Override
	public List<Users> getAllUsers() {
		// TODO Auto-generated method stub
		return userRepo.findAll();
	}

	@Override
	public String addUser(Users user) {
		// TODO Auto-generated method stub
		String response = "";
		List<Users> list = getAllUsers();
		for(Users u : list) {
			if(u.getEmailId().equalsIgnoreCase(user.getEmailId()) || u.getPassword().equals(user.getPassword())) {
				response = "exists";
				break;
			}else {
				userRepo.saveAndFlush(user);		
				response= "Added";		
			}
		}
		return response;
		
	}

	@Override
	public void updateUserById(Users user ,int id) {
		// TODO Auto-generated method stub
		if(userRepo.existsById(id)) {
			userRepo.saveAndFlush(user);
//			return "updated";
		}else {
			throw new RuntimeException("User id does not exists");
		}
		
	}
	
	/**
	 * 
	 * user login verification
	 * 
	 * 
	 * */
	@Override
	public String getUser(String email , String password) {
		// TODO Auto-generated method stub
		List<Users> user = userRepo.findAll();
		String ret = "Invalid entry";
		for(Users u : user) {
			if(u.getEmailId().equalsIgnoreCase(email) && u.getPassword().equals(password) && u.getUserRole().equals("ADMIN")) {
				id = u.getUserId();///fetch the id
				role = "ADMIN";
				ret = "adminpage";
				System.out.println("Admin");
				break;
			}else if(u.getEmailId().equalsIgnoreCase(email) && u.getPassword().equals(password) && u.getUserRole().equals("USER")){
				id = u.getUserId();
				role = "USER";
				System.out.println("user");
				ret = "userpage";
				break;
			}
		}
		return ret;
	}

	
	@Override
	public Users getUserById(int id) {
		// TODO Auto-generated method stub
		return userRepo.findById(id).get();
	}

	
	
	/**
	 * 
	 * change password
	 * 
	 * 
	 * */
	
	@Override
	public String changePassword( String oldPwd, String newPwd) {
		// TODO Auto-generated method stub
		String respond = "";
		List<Users> u = getAllUsers();
		for(Users d: u) {
			if( d.getPassword().equals(oldPwd) && id==d.getUserId() ) {
				if( d.getPassword().equals(newPwd) ) {
					respond="samePassword";
					break;
				}
				d.setPassword(newPwd);
				userRepo.saveAndFlush(d);
				respond = "success";
				break;
			}
			else{
				respond="invalid";
			}
		}
		return respond;
	}
	
		

	
	
}
