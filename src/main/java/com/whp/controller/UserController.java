package com.whp.controller;

import com.whp.entity.User;
import com.whp.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    UserService userService;

    @RequestMapping("/userLogin")
    public String loginMethod(User user) {
        User login = userService.login(user);
        if (login != null) {
            return "redirect:/user/showAll";
        } else {
            return "redirect:/index.jsp";
        }
    }

    @RequestMapping("/showAll")
    public String showAllUserMethod(HttpServletRequest request) {
        List<User> users = userService.showAll();
        request.setAttribute("users", users);
        return "index";
    }
}
