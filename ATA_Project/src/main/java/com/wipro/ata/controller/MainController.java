package com.wipro.ata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.wipro.ata.entity.BookingDetails;
import com.wipro.ata.entity.Users;
import com.wipro.ata.entity.Vehicle;
import com.wipro.ata.repositary.VehicleRepo;
import com.wipro.ata.service.UserService;
import com.wipro.ata.serviceimpl.BookingDetailsServiceImpl;
import com.wipro.ata.serviceimpl.DriverServiceImpl;
import com.wipro.ata.serviceimpl.RouteServiceImpl;
import com.wipro.ata.serviceimpl.UserServiceImpl;
import com.wipro.ata.serviceimpl.VehicleServiceImpl;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MainController {

	@Autowired
	VehicleServiceImpl vehicleimpl;

	@Autowired
	UserServiceImpl userImpl;

	@Autowired
	RouteServiceImpl routeImpl;

	@Autowired
	public BookingDetailsServiceImpl bookingImpl;

	@Autowired
	public DriverServiceImpl driverImpl;

	@Autowired
	VehicleRepo vrepo;

	boolean bool = false;

	@GetMapping("/")
	public String getpage() {
		return "home";
	}

	/**
	 * 
	 * login and register start
	 * 
	 */

	@GetMapping("/login")
	public String getLogin(ModelMap model) {
		model.put("msg", "");
		return "login";
	}

	@GetMapping(value = "/register")
	public String getRegister(ModelMap map) {
		map.put("msg", "");
		return "register";
	}

	@GetMapping("/admin")
	public String getAdminPage() {

		if (bool && userImpl.adminAuthentication()) {
			return "adminpage";
		} else {
			return "signout";
		}

	}

	@PostMapping("/loginstatus")
	public String loginverification(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap model) {

		if (userImpl.getUser(email, password).equals("Invalid entry")) {
			model.put("err", "Invalid! credentials");
			return "errlogin";
		} else {
			bool = true;
			return userImpl.getUser(email, password);
		}
	}

	@PostMapping("/registeruser")
	public String registerUser(@RequestParam("confirmpassword") String confirmPass, Users user, ModelMap model) {
		if(user.getPassword().equals(confirmPass)) {
			if (userImpl.addUser(user).equals("Added")) {
				model.put("msg", "successfully registered");
				return "login";
			} else {
				model.put("msg", "Email id and password already registered");
				return "register";
			}
		}else {
			model.put("msg", "confirm password missmatch");
			return "register";
		}
		
		
	}

	/**
	 * 
	 * login and register end
	 * 
	 */

	/**
	 * 
	 * vehicle crud start
	 * 
	 */

	@GetMapping("/viewvehicles")
	public String getAllVehicles(Model model) {

		if (bool && userImpl.adminAuthentication()) {
			model.addAttribute("vehicles", vehicleimpl.showVehiclesDetails());
			return "viewvehicles";
		} else {
			return "signout";
		}

	}

	@GetMapping("/updatevehicles")
	public String updateVehicle(Vehicle vehicle) {

		if (bool && userImpl.adminAuthentication()) {
			vehicleimpl.addVehicle(vehicle);
			return "viewvehicles";
		} else {
			return "signout";
		}

	}

	@GetMapping("/addvehicle")
	public String addVehicle(ModelMap map) {
		if (bool && userImpl.adminAuthentication()) {
			map.put("msg", "");
			return "addvehicle";
		} else {
			return "signout";
		}
	}

	@PostMapping("/addvehicledata")
	public String addVehiclepost(Vehicle vehicle, ModelMap mod) {
		if (bool && userImpl.adminAuthentication()) {
			if (vehicleimpl.addVehicle(vehicle).equals("Added")) {
				mod.put("msg", "Added successfully");
				return "addvehicle";
			} else {
				mod.put("msg", "Registraion number already exists");
				return "addvehicle";
			}
		} else {
			return "signout";
		}

	}

	@GetMapping("/deletevehicle/{id}")
	public String deleteVehicle(@PathVariable Integer id) {

		if (bool && userImpl.adminAuthentication()) {
			vehicleimpl.deleteVehicleById(id);
			return "redirect:/viewvehicles";
		} else {
			return "signout";
		}

	}

	@GetMapping("/updatevehicle/{id}")
	public String edit(@PathVariable("id") Integer id, Model model) {
		if (bool && userImpl.adminAuthentication()) {
			model.addAttribute("vehicle", vehicleimpl.getVehicleById(id));
			return "updatevehicle";
		} else {
			return "signout";
		}

	}

	@PostMapping("/action")
	public String update(@ModelAttribute("q") Vehicle v) {
		if (bool && userImpl.adminAuthentication()) {
			vehicleimpl.updateVehicleById(v);
			return "redirect:/viewvehicles";
		} else {
			return "signout";
		}

	}

	/**
	 * 
	 * vehicle crud end
	 * 
	 */

	/**
	 * 
	 * booking details display start
	 * 
	 */

	@GetMapping("/getallbookings")
	public String getAll(Model model) {

		if (bool && userImpl.adminAuthentication()) {
			model.addAttribute("bookingdetails", bookingImpl.getAllBookings());
			return "bookingdetails";
		} else {
			return "signout";
		}

	}

	@GetMapping("/customerdetails/{id}")
	public String getCustomerDetails(@PathVariable("id") int id, Model model) {

		if (bool && userImpl.adminAuthentication()) {
			model.addAttribute("info", userImpl.getUserById(id));
			return "bookeduser";
		} else {
			return "signout";
		}

	}

	@GetMapping("/vehiclebookeddetails/{id}")
	public String getVehicleBookedDetails(@PathVariable("id") int id, Model model) {

		// vdnf

		if (bool && userImpl.adminAuthentication()) {
			if (!vrepo.existsById(id)) {
				return "vdnf";
			} else {
				model.addAttribute("vb", vehicleimpl.getVehicleById(id));
				return "vehiclebooked";
			}
		} else {
			return "signout";
		}

	}

	@GetMapping("/routebookeddetails/{id}")
	public String getRouteBookedDetails(@PathVariable("id") int id, Model model) {
		if (bool && userImpl.adminAuthentication()) {
			model.addAttribute("rb", routeImpl.getRouteById(id));
			return "routebooked";
		} else {
			return "signout";
		}

	}

	@GetMapping("/driverbookeddetails/{id}")
	public String getDriverBookedDetails(@PathVariable("id") int id, Model model) {

		if (bool && userImpl.adminAuthentication()) {
			model.addAttribute("db", driverImpl.getDriverById(id));
			return "driverbooked";
		} else {
			return "signout";
		}

	}

	/**
	 * 
	 * booking details display end
	 * 
	 */

	/**
	 * 
	 * change password start
	 * 
	 */

	@GetMapping("/changepassword")
	public String getChangePasswordPage() {

		if (bool && userImpl.adminAuthentication()) {
			return "changepassword";
		} else {
			return "signout";
		}

	}

	@PostMapping("/changepwd")
	public String changePassword( @RequestParam("passwordold") String oldPwd,
			@RequestParam("passwordnew") String newPwd ,@RequestParam("conpassnew") String confirmNewPwd , ModelMap map) {
		
		if (bool && userImpl.adminAuthentication()) {
		
			if(newPwd.equals(confirmNewPwd)){
				String respond = userImpl.changePassword( oldPwd, newPwd);
				if (respond.equals("samePassword")) {
					map.put("msg", "Please provide new Password!!");
					return "errchangepwd";
				} else if (respond.equals("invalid")) {
					map.put("msg", "Invalid credentials! to change password");
					return "errchangepwd";
				} else if (respond.equals("success")) {
					map.put("msg", "Password Changed successfully");
					return "login";
				}
				
			}else {
				map.put("msg", "confirm password not match!!");
				System.out.println("hey wroks");
				return "errchangepwd";
			}
			
		} else {
			return "signout";
		}
		return "";
	}

	/**
	 * 
	 * change password end
	 * 
	 */

	@GetMapping("/logout")
	public String logout() {
		bool = false;
		return "redirect:/";
	}
}







//String respond = userImpl.changePassword(emailId, oldPwd, newPwd);
//if(!newPwd.equals(confirmNewPwd)) {
//	map.put("msg", "Password not match!!");
//	System.out.println("hey wroks");
//	return "errchangepwd";
//}