package lunch.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lunch.member.dto.MemberDto;
import lunch.member.mapper.MemberMapper;

/**
 * 회원용 공통 비니지스 service
 * @author bestplaykj
 */
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
    
}
