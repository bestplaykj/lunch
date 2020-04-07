package lunch.member.dto;

import lombok.Data;

/**
 * 회원 모델
 * Admin / Customer 공통 사용
 * @author bestplaykj
 */
@Data
public class MemberDto {
    
    /** 계정 */
    private String account;
    
    /** 비밀번호 */
    private String pwd;
    
    /** 계정분류 */
    private String accountType;
    
    /** 이름 */
    private String memberName;
    
    /** 이메일 */
    private String email;
    
    /** 가입일자 */
    private String registrationDate;
    
    /** 탈퇴일자 */
    private String unregistrationDate;
    
    /** 사용여부 */
    private String useYn;
    
    
    /** 시작일 (검색) */
    private String strDate;
    
    /** 종료일 (검색) */
    private String endDate;
    
    /** select 시작 row (페이징) */
    private Integer offset;
    
    /** select row 단위 (페이징) */
    private Integer limit;
    
}
