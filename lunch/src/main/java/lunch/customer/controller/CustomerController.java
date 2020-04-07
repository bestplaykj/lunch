package lunch.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lunch.customer.service.CustomerService;
import lunch.member.dto.MemberDto;

@Controller
public class CustomerController {
    
    @Autowired
    private CustomerService customerService;
    
    
    /**
     * 회원 정보보기
     * @return
     */
    @RequestMapping("/customer/myProfile")
    public String myProfile() {
        return "customer/myProfile";
    }
    
    /**
     * 비밀번호 변경 전 확인
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/customer/myProfile/pwdCheck")
    public String myProfilePwdCheck(MemberDto account) throws JSONException {
        if (account == null) { return null; }
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        if (account.getPwd() == null || "".equals(account.getPwd())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.customerService.myProfilePwdCheck(account));
        
        return json.toString();
    }
    
    /**
     * 비밀번호 변경
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/customer/myProfile/updatePwd")
    public String myProfileUpdatePwd(MemberDto account) throws JSONException {
        if (account == null) { return null; }
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        if (account.getPwd() == null || "".equals(account.getPwd())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.customerService.updatePwd(account));
        
        return json.toString();
    }
    
}
