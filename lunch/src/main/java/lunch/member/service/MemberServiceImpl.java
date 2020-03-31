package lunch.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lunch.member.dto.MemberDto;
import lunch.member.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
    
    @Autowired
    private MemberMapper memberMapper;
    
    
    /**
     * 로그인
     */
    @Override
    public MemberDto signIn(MemberDto member) {
        return this.memberMapper.signIn(member);
    }
    
    
    
}
