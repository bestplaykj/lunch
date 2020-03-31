package lunch.member.service;

import lunch.member.dto.MemberDto;

public interface MemberService {
    
    /**
     * 로그인
     * @param member
     * @return
     */
    MemberDto signIn(MemberDto member);
    
    
}
