package lunch.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lunch.common.dto.Paging;
import lunch.member.dto.MemberDto;
import lunch.member.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
    
    @Autowired
    private MemberMapper memberMapper;
    
    
    @Override
    public MemberDto signIn(MemberDto member) {
        return this.memberMapper.signIn(member);
    }
    
    @Override
    public boolean accountValidation(MemberDto account) {
        MemberDto result = this.memberMapper.accountValidation(account);
        return result == null ? true : false;
    }
    
    @Override
    public boolean registration(MemberDto member) {
        int result = this.memberMapper.registration(member);
        return result == 1 ? true : false;
    }
    
    @Override
    public boolean myProfilePwdCheck(MemberDto account) {
        MemberDto result = this.memberMapper.signIn(account);
        return result != null ? true : false;
    }
    
    @Override
    public boolean myProfileChangePwd(MemberDto account) {
        int result = this.memberMapper.myProfileChangePwd(account);
        return result == 1 ? true : false;
    }
    
    @Override
    public boolean unregisterAccount(MemberDto account) {
        int result = this.memberMapper.unregisterAccount(account);
        return result == 1 ? true : false;
    }
    
    @Override
    public List<MemberDto> getAllMemberList(MemberDto param) {
        if (!("user".equals(param.getAccountType()) || "admin".equals(param.getAccountType()))) { return null; }
        if (param.getAccount() != null && param.getAccount().length() > 10) { return null; }
        if (param.getMemberName() != null && param.getMemberName().length() > 10) { return null; }
        if (param.getStrDate() != null && param.getEndDate() == null) { return null; }
        if (param.getStrDate() == null && param.getEndDate() != null) { return null; }
        if (param.getOffset() == null) { param.setOffset(0); }
        if (param.getLimit() == null) { param.setLimit(10); }
        
        return this.memberMapper.getAllMemberList(param);
    }
    
    @Override
    public Paging getAllMemberListCount(MemberDto param, Paging paging) {
        Paging newPaging = new Paging();
        
        int totalCount = this.memberMapper.getAllMemberListCount(param);
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
        return this.memberMapper.getMemberProfile(account);
    }
    
    @Override
    public boolean changeAccountType(MemberDto user) {
        int result = this.memberMapper.changeAccountType(user);
        return result == 1 ? true : false;
    }
    
    
    
    
    
}
