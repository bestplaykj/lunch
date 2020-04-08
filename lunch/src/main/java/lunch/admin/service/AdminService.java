package lunch.admin.service;

import java.util.List;

import lunch.common.dto.PagingDto;
import lunch.member.dto.MemberDto;

/**
 * 관리자 비지니스 service interface
 * @author bestplaykj
 */
public interface AdminService {
    
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
     * 회원탈퇴
     * @param account
     * @return
     */
    boolean unregisterAccount(MemberDto account);
    
    /**
     * 전체회원 정보보기
     * @param param
     * @return
     */
    List<MemberDto> getAllMemberList(MemberDto param);
    
    /**
     * 전체회원 정보보기 count
     * @param param
     * @return
     */
    PagingDto getAllMemberListCount(MemberDto param, PagingDto paging);
    
    /**
     * 회원 정보보기
     * @param account
     * @return
     */
    MemberDto getMemberProfile(MemberDto account);
    
    /**
     * 계정 권한 변경
     * @param account
     * @return
     */
    boolean changeAccountType(MemberDto account);
    
    /**
     * 강제탈퇴
     * @param account
     * @return
     */
    boolean forcedUnregister(MemberDto account);
    
}
