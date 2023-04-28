package com.icia.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
    Long id;
    String memberEmail;
    String memberPassword;
    String memberName;
    String memberBirth;
    String memberMobile;
}
