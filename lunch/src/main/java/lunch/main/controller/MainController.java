package lunch.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ROOT open controller
 * @author bestplaykj
 */
@Controller
public class MainController {
    
    /**
     * 메인페이지 시작
     * @return
     */
    @RequestMapping("/")
    public String startMain() {
        return "index";
    }
    
}
