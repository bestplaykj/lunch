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
    
}
