package lunch.customer.service;

import lunch.member.dto.MemberDto;

/**
 * 일반회원 비지니스 service interface
 * @author bestplaykj
 */
public interface CustomerService {
    
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
    boolean updatePwd(MemberDto account);
    
    /**
     * 회원 탈퇴
     * @param account
     * @return
     */
    boolean unregisterAccount(MemberDto account);
    
}
