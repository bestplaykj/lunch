package lunch.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lunch.admin.service.AdminService;

@Controller
public class AdminController {
    
    @Autowired
    private AdminService adminService;
    
    
    @RequestMapping("/admin/")
    public String startAdminMain() {
        return "admin/index";
    }
    
    @RequestMapping("/admin/myProfile")
    public String myProfile() {
        return "admin/myProfile";
    }
    
}
