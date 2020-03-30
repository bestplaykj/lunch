package lunch.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lunch.admin.mapper.AdminMapper;

@Service
public class AdminServiceImpl implements AdminService {
    
    @Autowired
    private AdminMapper adminMapper;
    
    
}
