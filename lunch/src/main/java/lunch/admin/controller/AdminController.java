package lunch.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lunch.admin.service.AdminService;

@Controller
public class AdminController {
    
    @Autowired
    private AdminService adminService;
    
    
    @RequestMapping("/admin/main")
    public String startAdminMain() {
        return "admin/main";
    }
    
    
}
