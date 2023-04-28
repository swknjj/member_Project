package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/")
    public String index() {
        return "index";
    }
    @GetMapping("/save")
    public String saveForm() {
        return "memberSave";
    }
    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO) {
        boolean result = memberService.save(memberDTO);
        if(result) {
            return "/memberLogin";
        }else {
            return "errorPage";
        }
    }
    @GetMapping("memberLogin")
    public String loginForm() {
        return "memberLogin";
    }
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session) {
        MemberDTO m = memberService.login(memberDTO);
        if(m!=null){
//            model.addAttribute("loginEmail",memberDTO.getMemberEmail());
            session.setAttribute("loginEmail",memberDTO.getMemberEmail());
            return "/memberMain";
        }else {
            return "errorPage";
        }
    }
    @GetMapping("/members")
    public String memberList(Model model) {
        List<MemberDTO> memberDTOList = memberService.memberlist();
        model.addAttribute("List",memberDTOList);
//        for(int i=0; i<memberDTOList.size(); i++) {
//            System.out.println(memberDTOList.get(i));
//        }
        return "memberList";
    }
    @GetMapping("/member")
    public String member(@RequestParam("id") Long id,Model model) {
        MemberDTO m = memberService.member(id);
        model.addAttribute("memberDTO",m);
        return "memberDetail";
    }
    @GetMapping("/update")
    public String updateForm(@RequestParam("id") Long id,Model model) {
        MemberDTO m = memberService.member(id);
        model.addAttribute("memberDTO",m);
        return "memberUpdate";
    }
    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO) {
        memberService.update(memberDTO);
        return "/memberDetail";
    }
    @GetMapping("/mypage")
    public String myPage() {
        return "memberMain";
    }
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        // 세션에 담긴 값 전체 삭제
        session.invalidate();
        // 특정 파라미터만 삭제
//        session.removeAttribute("loginEmail");
        return "redirect:/";
    }
//    @GetMapping("/duplicate-check")
//    public String duplicatecheck(@RequestParam("memberEmail") String memberEmail,Model model) {
//        MemberDTO memberDTO = memberService.duplicatecheck(memberEmail);
//        if(memberDTO.getMemberEmail()==null) {
//            return
//        }else {
//
//        }

    }


/* 세션(session) tomcat이 실행되는 동안에는 항상 갖고있는 값
model은 일회용
 */

