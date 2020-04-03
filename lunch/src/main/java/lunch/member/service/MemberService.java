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
    
    /**
     * 비밀번호 변경 전 확인
     * @param account
     * @return
     */
    boolean myProfilePwdCheck(MemberDto account);
    
    /**
     * 비밀번호 변경
     * @param account
     * @return
     */
    boolean myProfileChangePwd(MemberDto account);
    
    /**
     * 회원탈퇴
     * @param account
     * @return
     */
    boolean unregisterAccount(MemberDto account);
    
}
