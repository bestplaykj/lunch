package lunch.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lunch.admin.service.AdminService;
import lunch.common.dto.Paging;
import lunch.member.dto.MemberDto;
import lunch.member.service.MemberService;

@Controller
public class AdminController {
    
    @Autowired
    private AdminService adminService;
    
    @Autowired
    private MemberService memberService;
    
    
    /**
     * 관리자 메인화면
     * @return
     */
    @RequestMapping("/admin/")
    public String startAdminMain() {
        return "admin/index";
    }
    
    /**
     * 내 정보 보기
     * @return
     */
    @RequestMapping("/admin/myProfile")
    public String myProfile() {
        return "admin/myProfile";
    }
    
    /**
     * 전체 관리자 정보보기
     * @param model
     * @param param
     * @return
     */
    @RequestMapping("/admin/getAdminMemberList")
    public String getAdminMemberList(Model model ,MemberDto param, Paging paging) {
        param.setAccountType("admin");
        
        if (paging.getCurrPage() != null && paging.getCurrPage() != 1) {
            if (param.getLimit() == null) {
                param.setOffset(10 * (paging.getCurrPage() - 1));
            } else {
                param.setOffset(param.getLimit() * (paging.getCurrPage() - 1));
            }
        }
        
        model.addAttribute("account", "Admin");
        model.addAttribute("list", this.memberService.getAllMemberList(param));
        model.addAttribute("paging", this.memberService.getAllMemberListCount(param, paging));
        return "admin/lists/memberList";
    }
    
    /**
     * 전체 회원 정보보기
     * @param model
     * @param param
     * @return
     */
    @RequestMapping("/admin/getUserMemberList")
    public String getUserMemberList(Model model, MemberDto param, Paging paging){
        param.setAccountType("user");
        
        if (paging.getCurrPage() != null && paging.getCurrPage() != 1) {
            if (param.getLimit() == null) {
                param.setOffset(10 * (paging.getCurrPage() - 1));
            } else {
                param.setOffset(param.getLimit() * (paging.getCurrPage() - 1));
            }
        }
        
        model.addAttribute("account", "User");
        model.addAttribute("list", this.memberService.getAllMemberList(param));
        model.addAttribute("paging", this.memberService.getAllMemberListCount(param, paging));
        return "admin/lists/memberList";
    }
    
    /**
     * 회원 정보보기
     * @param model
     * @param account
     * @return
     */
    @RequestMapping("/admin/getUserMemberProfile")
    public String getMemberProfile(Model model, MemberDto account) {
        if (account.getAccount() == null) { return "error/error"; }
        
        MemberDto member = this.memberService.getMemberProfile(account);
        if (member == null) { return "error/error"; }
        
        model.addAttribute("profile", member);
        return "admin/lists/memberProfile";
    }
    
    /**
     * 계정 권한 관리자로 변경
     * @param user
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/admin/changeAccountType")
    public String changeAccountType(MemberDto user) throws JSONException {
        JSONObject json = new JSONObject();
        
        if (user.getAccount() == null) { json.put("result", false); }
        
        json.put("result", this.memberService.changeAccountType(user));
        
        return json.toString();
    }
    
}
