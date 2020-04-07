package lunch.customer.mapper;

import org.apache.ibatis.annotations.Mapper;

import lunch.member.dto.MemberDto;

@Mapper
public interface CustomerMapper {
    
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
    
}
