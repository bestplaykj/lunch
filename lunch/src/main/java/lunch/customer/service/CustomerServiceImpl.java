package lunch.customer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lunch.customer.mapper.CustomerMapper;
import lunch.member.dto.MemberDto;

@Service
public class CustomerServiceImpl implements CustomerService {
    
    @Autowired
    private CustomerMapper customerMapper;
    
    
    @Override
    public boolean myProfilePwdCheck(MemberDto account) {
        MemberDto result = this.customerMapper.signIn(account);
        
        if (result == null) { return false; }
        
        if (!account.getAccount().equals(result.getAccount())) { return false; }
        
        if (!account.getPwd().equals(result.getPwd())) { return false; }
        
        return true;
    }
    
    @Override
    public boolean updatePwd(MemberDto account) {
        int result = this.customerMapper.updatePwd(account);
        return result == 1 ? true : false;
    }
    
    
    
    
    
    
}
