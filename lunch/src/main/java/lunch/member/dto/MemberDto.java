package lunch.member.dto;

import lombok.Data;

@Data
public class MemberDto {
    
    private String account;
    
    private String pwd;
    
    private String accountType;
    
    private String memberName;
    
    private String email;
    
    private String registrationDate;
    
    private String unregistrationDate;
    
    private String useYn;
    
    
    private String strDate;
    
    private String endDate;
    
    private Integer offset;
    
    private Integer limit;
    
}
