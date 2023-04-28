package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO) {
        boolean result = memberRepository.save(memberDTO);
        return result;
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO m = memberRepository.login(memberDTO);
        return m;
    }

    public List<MemberDTO> memberlist() {
        List<MemberDTO> memberDTOList= memberRepository.memberlist();
        if(memberDTOList.size()==0){
            return null;
        }else {
            return memberDTOList;
        }
    }

    public MemberDTO member(Long id) {
        MemberDTO memberDTO = memberRepository.member(id);
        return memberDTO;
    }

    public void update(MemberDTO memberDTO) {
        memberRepository.update(memberDTO);
    }

//    public MemberDTO duplicatecheck(String memberEmail) {
//        MemberDTO memberDTO = memberRepository.duplicatecheck(memberEmail);
//        return memberDTO;
//    }
}
