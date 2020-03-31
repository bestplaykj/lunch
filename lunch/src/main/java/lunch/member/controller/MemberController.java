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
        
        if (member.getAccount() == null || "".equals(member.getAccount()) || member.getPwd() == null || "".equals(member.getPwd())) {
            return null;
        }
        
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
     * @param type
     * @return
     */
    @RequestMapping("/member/signInOut/signOut")
    public String memberSignOut(SessionStatus status, String type) {
        status.setComplete();
        
        if ("admin".equals(type)) {
            return "redirect:/admin/";
            
        } else {
            return "redirect:/";
        }
    }
    
    @RequestMapping("/member/signInOut/findPassword")
    public String findPassword() {
        return "member/findPassword";
    }
    
    /**
     * 회원가입 폼
     */
    @RequestMapping("/member/signInOut/registrationForm")
    public String registrationForm() {
        return "member/registrationForm";
    }
    
    
    
    
}
