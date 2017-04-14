package com.test.springmvc.controller;

import com.test.springmvc.config.EncrypterPassword;
import com.test.springmvc.model.User;
import com.test.springmvc.model.UserForm;
import com.test.springmvc.constants.EmployeeConstants;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.SecretKey;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.ui.ModelMap;

@Controller
public class HomeController {    
        @RequestMapping(value="/get")
	public ModelAndView employeeGet(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws IOException{
		JSONParser parser = new JSONParser();
                UserForm userVar = new UserForm();
                try{
                    final File resourcesFolder = new File(EmployeeConstants.resourcePath);
                    List<User> users=new ArrayList<User>();
                    
                    for (final File fileEntry : resourcesFolder.listFiles()) {
                    if (fileEntry.isDirectory()) {
                        System.out.println(fileEntry.getName());
                    } else {
                        System.out.println("In here"+ fileEntry.getName());
                        if (fileEntry.getName().contains("data")){     
                         JSONObject obj= (JSONObject) parser.parse(new FileReader(fileEntry.getAbsolutePath()));
                         User user = this.getUserObject();
                         System.out.println(obj.toJSONString());  
                         user.setUserName((String)obj.get("Name"));
                         user.setAge((String)obj.get("Age"));
                         user.setDesignation((String)obj.get("Designation"));
                         user.setLocation((String)obj.get("Location"));
                         user.setPassword(EncrypterPassword.decryptText((String)obj.get("Password")));
                         users.add(user);

                      }
                    }
                  }
                userVar.setUsers(users);
                }
                catch (ParseException ex) {
                    ex.printStackTrace();
                }
                catch(Exception exp){
                    exp.printStackTrace();
                }
		return new ModelAndView("display", "userVar", userVar);
	}
        @RequestMapping(value="/set")
	public ModelAndView employeeSetPage(Model model, HttpServletResponse response) throws IOException{
		System.out.println("Inside Set Controller");
                User user = this.getUserObject();
                model.addAttribute("user", user);
                return new ModelAndView("set");
	}
        @ModelAttribute("user")
            public User getUserObject() {
            return new User();
        }
        @RequestMapping(value="/register")
	public String employeeSetValue(@ModelAttribute("user") User user, BindingResult result, Model model) throws IOException{
            System.out.println("Inside Reg Controller");
            FileWriter file = null;
            
         try {
            JSONObject obj = new JSONObject();
            obj.put("Name", user.getUserName());
            obj.put("Password", EncrypterPassword.encryptText(user.getPassword()));
            obj.put("Age", user.getAge());
            obj.put("Designation", user.getDesignation());
            obj.put("Location", user.getLocation());
           
            file = new FileWriter(EmployeeConstants.resourcePath + "data" + user.getUserName()+ ".txt");
            
			file.write(obj.toJSONString());
			System.out.println("Successfully Copied JSON Object to File...");
			System.out.println("\nJSON Object: " + obj);
            }
            catch(IOException e){
                e.printStackTrace();
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            finally{
                System.out.println("In Finally Block");
                file.close();
            }
            return "result";
	}
}
