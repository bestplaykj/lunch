package lunch.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import lunch.member.dto.MemberDto;
import lunch.member.service.MemberService;

/**
 * 회원 컨트롤러
 * @author bestplaykj
 */
@Controller
@SessionAttributes("member")
public class MemberController {
    
    @Autowired
    private MemberService memberService;
    
    
    /**
     * 로그인 폼
     */
    @RequestMapping("/member/signInOut/signInForm")
    public String signInForm() {
        return "member/signInForm";
    }
    
    /**
     * 로그인 
     * @param member
     * @param model
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/member/signInOut/signIn")
    public String memberSignIn(MemberDto member, Model model) throws JSONException {
        if (member.getAccount() == null || "".equals(member.getAccount()) || member.getPwd() == null || "".equals(member.getPwd())) { return null; }
        
        JSONObject json = new JSONObject();
        
        MemberDto signInMember = this.memberService.signIn(member);
        if (signInMember == null) {
            json.put("result", "아이디/비밀번호 확인");
            return json.toString();
        }
        
        json.put("result", "userIdentified");
        if ("admin".equals(signInMember.getAccountType())) {
            json.put("result", "adminIdentified");
        }
        
        model.addAttribute("member", signInMember);
        
        return json.toString();
    }
    
    
    /**
     * 로그아웃
     * @param status
     * @return
     */
    @RequestMapping("/member/signInOut/signOut")
    public String memberSignOut(SessionStatus status) {
        status.setComplete();
        return "redirect:/member/signInOut/signInForm";
    }
    
    /**
     * 회원가입 폼
     */
    @RequestMapping("/member/signInOut/registrationForm")
    public String registrationForm() {
        return "member/registrationForm";
    }
    
    /**
     * 아이디 중복체크
     * @param model
     * @param account
     * @return
     * @throws JSONException 
     */
    @ResponseBody
    @RequestMapping("/member/signInOut/accountValidation")
    public String accountValidation(Model model, MemberDto account) throws JSONException {
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.memberService.accountValidation(account));
        
        return json.toString();
    }
    
    /**
     * 회원가입
     * @param model
     * @param member
     * @return
     * @throws JSONException 
     */
    @ResponseBody
    @RequestMapping("/member/signInOut/registration")
    public String registration(Model model, MemberDto member) throws JSONException {
        if (member == null) { return null; }
        if (member.getAccount() == null || "".equals(member.getAccount())) { return null; }
        if (member.getPwd() == null || "".equals(member.getPwd())) { return null; }
        if (member.getMemberName() == null || "".equals(member.getMemberName())) { return null; }
        if (member.getEmail() == null || "".equals(member.getEmail())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.memberService.registration(member));
        
        return json.toString();
    }
    
    /**
     * 비밀번호 변경 전 확인
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/member/myProfile/pwdCheck")
    public String myProfilePwdCheck(MemberDto account) throws JSONException {
        if (account == null) { return null; }
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        if (account.getPwd() == null || "".equals(account.getPwd())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.memberService.myProfilePwdCheck(account));
        
        return json.toString();
    }
    
    /**
     * 비밀번호 변경
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/member/myProfile/changePwd")
    public String myProfileChangePwd(MemberDto account) throws JSONException {
        if (account == null) { return null; }
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        if (account.getPwd() == null || "".equals(account.getPwd())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.memberService.myProfileChangePwd(account));
        
        return json.toString();
    }
    
    /**
     * 회원탈퇴
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/member/myProfile/unregisterAccount")
    public String unregisterAccount(MemberDto account) throws JSONException {
        if (account == null) { return null; }
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.memberService.unregisterAccount(account));
        
        return json.toString();
    }
    
    /**
     * 비밀번호 찾기 폼
     * @return
     */
    @RequestMapping("/member/signInOut/findPassword")
    public String findPassword() {
        return "member/findPassword";
    }
    
}
