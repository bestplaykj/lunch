package lunch.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import lunch.member.dto.MemberDto;

/**
 * 관리자 mapper
 * @author bestplaykj
 */
@Mapper
public interface AdminMapper {
    
    /**
     * 로그인
     * @param dto
     * @return
     */
    MemberDto signIn(MemberDto dto);
    
    /**
     * 비밀번호 변경
     * @param dto
     * @return
     */
    int updatePwd(MemberDto dto);
    
    /**
     * 회원탈퇴
     * @param dto
     * @return
     */
    int unregisterAccount(MemberDto dto);
    
    /**
     * 전체회원 정보보기
     * @param dto
     * @return
     */
    List<MemberDto> getAllMemberList(MemberDto dto);
    
    /**
     * 전체회원 정보보기 count
     * @param dto
     * @return
     */
    int getAllMemberListCount(MemberDto dto);
    
    /**
     * 회원 정보보기
     * @param dto
     * @return
     */
    MemberDto getMemberProfile(MemberDto dto);
    
    /**
     * 계정 권한 관리자로 변경
     * @param dto
     * @return
     */
    int changeAccountType(MemberDto dto);
    
}
