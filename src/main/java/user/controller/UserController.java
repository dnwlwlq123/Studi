package user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    @GetMapping(value = "/loginForm")
    public String loginForm(){
        return "user/loginForm";
    }

    @GetMapping(value = "/writeForm")
    public String writeForm(){
        return "user/writeForm";
    }
}
