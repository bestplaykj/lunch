package lunch.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lunch.admin.mapper.AdminMapper;
import lunch.common.dto.Paging;
import lunch.member.dto.MemberDto;

/**
 * 관리자 비지니스 service
 * @author bestplaykj
 */
@Service
public class AdminServiceImpl implements AdminService {
    
    @Autowired
    private AdminMapper adminMapper;
    
    
    @Override
    public boolean myProfilePwdCheck(MemberDto account) {
        MemberDto result = this.adminMapper.signIn(account);
        
        if (result == null) { return false; }
        
        if (!account.getAccount().equals(result.getAccount())) { return false; }
        
        if (!account.getPwd().equals(result.getPwd())) { return false; }
        
        return true;
    }
    
    @Override
    public boolean updatePwd(MemberDto account) {
        int result = this.adminMapper.updatePwd(account);
        return result == 1 ? true : false;
    }
    
    @Override
    public boolean unregisterAccount(MemberDto account) {
        int result = this.adminMapper.unregisterAccount(account);
        return result == 1 ? true : false;
    }
    
    @Override
    public List<MemberDto> getAllMemberList(MemberDto param) {
        if (!("customer".equals(param.getAccountType()) || "admin".equals(param.getAccountType()))) { return null; }
        if (param.getAccount() != null && param.getAccount().length() > 10) { return null; }
        if (param.getMemberName() != null && param.getMemberName().length() > 10) { return null; }
        if (param.getStrDate() != null && param.getEndDate() == null) { return null; }
        if (param.getStrDate() == null && param.getEndDate() != null) { return null; }
        if (param.getOffset() == null) { param.setOffset(0); }
        if (param.getLimit() == null) { param.setLimit(10); }
        
        return this.adminMapper.getAllMemberList(param);
    }
    
    @Override
    public Paging getAllMemberListCount(MemberDto param, Paging paging) {
        Paging newPaging = new Paging();
        
        int totalCount = this.adminMapper.getAllMemberListCount(param);
        int limit = param.getLimit();
        
        int totalPages = totalCount / limit;
        if (totalCount % limit != 0) {
            totalPages += 1;
        }
        
        newPaging.setLimit(limit);
        newPaging.setTotalCount(totalCount);
        newPaging.setTotalPages(totalPages);
        
        if (paging.getCurrPage() == null) { 
            newPaging.setCurrPage(1);
        } else {
            newPaging.setCurrPage(paging.getCurrPage());
        }
        
        return newPaging;
    }
    
    @Override
    public MemberDto getMemberProfile(MemberDto account) {
        if (account.getAccount() == null) { return null; }
        return this.adminMapper.getMemberProfile(account);
    }
    
    @Override
    public boolean changeAccountType(MemberDto user) {
        int result = this.adminMapper.changeAccountType(user);
        return result == 1 ? true : false;
    }
    
    
}
