package cn.tycoding.controller;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SuppressWarnings("all")
@RequestMapping("/test")
public class testController {

    @RequestMapping("/findAll")
    //zheg 这个注解不生效   @RequiresPermissions(value="test:test")//sys:user:edit   [Subject does not have permission [test:test]]
    @RequiresRoles(value={"admin","test-test1"}, logical = Logical.OR)
    public String findAll(Model model) {
        model.addAttribute("test", "用户才能打开");
        return "page/test";
    }
}
