package lunch.member.service;

import java.util.List;

import lunch.common.dto.Paging;
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
    Paging getAllMemberListCount(MemberDto param, Paging paging);
    
    /**
     * 회원 정보보기
     * @param account
     * @return
     */
    MemberDto getMemberProfile(MemberDto account);
    
    /**
     * 계정 권한 관리자로 변경
     * @param user
     * @return
     */
    boolean changeAccountType(MemberDto user);
    
}
