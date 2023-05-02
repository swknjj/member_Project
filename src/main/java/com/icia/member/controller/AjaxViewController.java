package com.icia.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AjaxViewController {
    @GetMapping("/ajax-view01")
    public String ajax_view01() {
        return "ajax_01";
    }
    @GetMapping("/ajax-view02")
    public String ajax_view02() {
        return "ajax_02";
    }
    @GetMapping("/ajax-view03")
    public String ajax_view03() {
        return "ajax_03";
    }
    @GetMapping("/ajax-view04")
    public String ajax_view04() {
        return "ajax_04";
    }
    @GetMapping("/ajax-view05")
    public String ajax_view05() {
        return "ajax_05";
    }
    @GetMapping("ajax-view06")
    public String ajax_view06() {
        return "ajax_06";
    }
    @GetMapping("ajax-view07")
    public String ajax_view07() {
        return "ajax_07";
    }
    @GetMapping("ajax-view08")
    public String ajax_view08() {
        return "ajax_08";
    }
    @GetMapping("ajax-view09")
    public String ajax_view09() {
        return "ajax_09";
    }
    @GetMapping("ajax-view10")
    public String ajax_view10() {
        return "ajax_10";
    }

}
