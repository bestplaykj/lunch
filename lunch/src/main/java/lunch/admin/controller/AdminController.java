package lunch.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import lunch.admin.service.AdminService;

@Controller
public class AdminController {
    
    @Autowired
    private AdminService adminService;
    
    
    
    
}
