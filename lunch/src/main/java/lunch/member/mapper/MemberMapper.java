package lunch.member.mapper;

import org.apache.ibatis.annotations.Mapper;

import lunch.member.dto.MemberDto;

@Mapper
public interface MemberMapper {
    
    /**
     * 로그인
     * @param dto
     * @return
     */
    MemberDto signIn(MemberDto dto);
    
    /**
     * 아이디 중복확인
     * @param dto
     * @return
     */
    MemberDto accountValidation(MemberDto dto);
    
    /**
     * 회원가입
     * @param dto
     * @return
     */
    int registration(MemberDto dto);
    
    /**
     * 비밀번호 변경
     * @param dto
     * @return
     */
    int myProfileChangePwd(MemberDto dto);
    
    /**
     * 회원탈퇴
     * @param dto
     * @return
     */
    int unregisterAccount(MemberDto dto);
    
}
