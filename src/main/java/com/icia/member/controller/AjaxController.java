package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AjaxController {
    @Autowired
    MemberService memberService;

    @GetMapping(value = "/ajax_01", produces = "application/text; charset=utf-8") // 한글깨짐 방지
    public @ResponseBody String ajax_01() {
        System.out.println("AjaxControlloer.ajax_01");
        return "리턴입니다";
    }

    @PostMapping("/ajax_02")
    public @ResponseBody String ajax_02() {
        return "hello i am return";
    }

    @GetMapping("/ajax_03")
    public @ResponseBody String ajax_03(@RequestParam("param1") String param1, @RequestParam("param2") String param2) {
        System.out.println("param1 = " + param1 + ", param2 = " + param2);
        return "good";
    }

    @PostMapping("/ajax_04")
    public @ResponseBody String ajax_04(@RequestParam("param1") String param1, @RequestParam("param2") String param2, @RequestParam("qqq") String qqq) {
        System.out.println("param1 = " + param1 + ", param2 = " + param2 + ", qqq = " + qqq);
        return "good";
    }

    @GetMapping("/ajax_05")
    public @ResponseBody MemberDTO ajax_05(@ModelAttribute MemberDTO memberDTO) {
        System.out.println("memberDTO = " + memberDTO);
        return memberDTO;
    }

    @GetMapping("/ajax_06")
    public @ResponseBody List<MemberDTO> ajax_06() {
        List<MemberDTO> memberDTOList = memberService.memberlist();
        return memberDTOList;
    }

    @PostMapping("/ajax_07")
    public @ResponseBody MemberDTO ajax07(@RequestBody MemberDTO memberDTO) {
        System.out.println("MemberDTO = " + memberDTO);
        return memberDTO;
    }
    @PostMapping("/ajax_08")
    public @ResponseBody List<MemberDTO> ajax08(@RequestBody MemberDTO memberDTO) {
        List<MemberDTO> memberDTOList = memberService.memberlist();
        memberDTOList.add(memberDTO);
        return memberDTOList;
    }
    @PostMapping("/ajax_09")
    public ResponseEntity ajax09(@ModelAttribute MemberDTO memberDTO) {
        System.out.println("memberDTO = " + memberDTO);
        return new ResponseEntity<>(memberDTO, HttpStatus.NOT_FOUND);
    }
    // REST API, RESTFUL API
    @PostMapping("/ajax_10")
    public ResponseEntity ajax10(@RequestBody MemberDTO memberDTO) {
        System.out.println("memberDTO = " + memberDTO);
        List<MemberDTO> memberDTOList = memberService.memberlist();
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("member",memberDTO);
        resultMap.put("memberList",memberDTOList);
        return new ResponseEntity<>(resultMap, HttpStatus.OK);
    }
    @PostMapping("email-check")
    public ResponseEntity email_check(@RequestParam("email_check") String email) {
        MemberDTO memberDTO = memberService.findByEmail(email);
        if(memberDTO == null) {
            return new ResponseEntity<>(memberDTO,HttpStatus.OK);
        }else {
            return new ResponseEntity<>(memberDTO, HttpStatus.CONFLICT);
        }

    }
    @PostMapping("member_table")
    public ResponseEntity member_table(@RequestParam("id") Long id) {
        MemberDTO m = memberService.member(id);
        System.out.println("m = " + m);
        if(m!=null){
            return new ResponseEntity<>(m,HttpStatus.OK);
        }else {
            return new ResponseEntity<>(m,HttpStatus.NOT_FOUND);
        }

    }



}
//    @GetMapping("/ajax_05")
//    public @ResponseBody MemberDTO ajax_05(@ModelAttribute MemberDTO memberDTO) {
//        System.out.println("memberDTO = " + memberDTO);
//        return memberDTO;
//    }