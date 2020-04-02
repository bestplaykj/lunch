package lunch.member.service;

import lunch.member.dto.MemberDto;

public interface MemberService {
    
    /**
     * 로그인
     * @param member
     * @return
     */
    MemberDto signIn(MemberDto member);
    
    /**
     * 아이디 중복확인
     * @param account
     * @return
     */
    boolean accountValidation(MemberDto account);
    
    /**
     * 회원가입
     * @param member
     * @return
     */
    boolean registration(MemberDto member);
    
}
