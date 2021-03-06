package lunch.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lunch.admin.service.AdminService;
import lunch.common.dto.PagingDto;
import lunch.member.dto.MemberDto;

/**
 * 관리자 controller
 * @author bestplaykj
 */
@Controller
public class AdminController {
    
    private static final String ADMIN = "admin";
    private static final String CUSTOMER = "customer";
    
    @Autowired
    private AdminService adminService;
    
    
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
     * 비밀번호 변경 전 확인
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/admin/myProfile/pwdCheck")
    public String myProfilePwdCheck(MemberDto account) throws JSONException {
        if (account == null) { return null; }
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        if (account.getPwd() == null || "".equals(account.getPwd())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.adminService.myProfilePwdCheck(account));
        
        return json.toString();
    }
    
    /**
     * 비밀번호 변경
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/admin/myProfile/updatePwd")
    public String myProfileUpdatePwd(MemberDto account) throws JSONException {
        if (account == null) { return null; }
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        if (account.getPwd() == null || "".equals(account.getPwd())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.adminService.updatePwd(account));
        
        return json.toString();
    }
    
    /**
     * 회원탈퇴
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/admin/myProfile/unregisterAccount")
    public String unregisterAccount(MemberDto account) throws JSONException {
        if (account == null) { return null; }
        if (account.getAccount() == null || "".equals(account.getAccount())) { return null; }
        
        JSONObject json = new JSONObject();
        
        json.put("result", this.adminService.unregisterAccount(account));
        
        return json.toString();
    }
    
    /**
     * 전체 관리자 정보보기
     * @param model
     * @param param
     * @return
     */
    @RequestMapping("/admin/getAdminMemberList")
    public String getAdminMemberList(Model model ,MemberDto param, PagingDto paging) {
        param.setAccountType(ADMIN);
        
        if (paging.getCurrPage() != null && paging.getCurrPage() != 1) {
            if (param.getLimit() == null) {
                param.setOffset(10 * (paging.getCurrPage() - 1));
            } else {
                param.setOffset(param.getLimit() * (paging.getCurrPage() - 1));
            }
        }
        
        model.addAttribute("account", ADMIN);
        model.addAttribute("list", this.adminService.getAllMemberList(param));
        model.addAttribute("paging", this.adminService.getAllMemberListCount(param, paging));
        return "admin/lists/memberList";
    }
    
    /**
     * 전체 회원 정보보기
     * @param model
     * @param param
     * @return
     */
    @RequestMapping("/admin/getUserMemberList")
    public String getUserMemberList(Model model, MemberDto param, PagingDto paging){
        param.setAccountType(CUSTOMER);
        
        if (paging.getCurrPage() != null && paging.getCurrPage() != 1) {
            if (param.getLimit() == null) {
                param.setOffset(10 * (paging.getCurrPage() - 1));
            } else {
                param.setOffset(param.getLimit() * (paging.getCurrPage() - 1));
            }
        }
        
        model.addAttribute("account", CUSTOMER);
        model.addAttribute("list", this.adminService.getAllMemberList(param));
        model.addAttribute("paging", this.adminService.getAllMemberListCount(param, paging));
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
        
        MemberDto member = this.adminService.getMemberProfile(account);
        if (member == null) { return "error/error"; }
        
        model.addAttribute("profile", member);
        return "admin/lists/memberProfile";
    }
    
    /**
     * 계정 권한 관리자로 변경
     * @param customer
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/admin/makeAdmin")
    public String makeAdmin(MemberDto customer) throws JSONException {
        JSONObject json = new JSONObject();
        
        if (customer.getAccount() == null) { json.put("result", false); return json.toString();}
        
        customer.setAccountType(ADMIN);
        json.put("result", this.adminService.changeAccountType(customer));
        
        return json.toString();
    }
    
    /**
     * 계정 권한 일반회원으로 변경
     * @param admin
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/admin/makeCustomer")
    public String makeCustomer(MemberDto admin) throws JSONException {
        JSONObject json = new JSONObject();
        
        if (admin.getAccount() == null) { json.put("result", false); return json.toString(); }
        
        admin.setAccountType(CUSTOMER);
        json.put("result", this.adminService.changeAccountType(admin));
        
        return json.toString();
    }
    
    /**
     * 강제탈퇴
     * @param account
     * @return
     * @throws JSONException
     */
    @ResponseBody
    @RequestMapping("/admin/forcedUnregister")
    public String forcedUnregister(MemberDto account) throws JSONException {
        JSONObject json = new JSONObject();
        
        if (account.getAccount() == null) { json.put("result", false); return json.toString(); }
        
        json.put("result", this.adminService.forcedUnregister(account));
        
        return json.toString();
    }
    
}
