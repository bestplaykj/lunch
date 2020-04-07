package lunch.customer.service;

import lunch.member.dto.MemberDto;

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
    
}
