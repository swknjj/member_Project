package com.icia.member.repository;

import com.icia.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public boolean save(MemberDTO memberDTO) {
        try {
            sql.insert("Member.save",memberDTO);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login",memberDTO);
    }

    public List<MemberDTO> memberlist() {
        return sql.selectList("Member.memberlist");
    }

    public MemberDTO member(Long id) {
        return sql.selectOne("Member.memberDTO",id);
    }

    public void update(MemberDTO memberDTO) {
        sql.update("Member.update",memberDTO);
    }

    public int delete(Long id) {
        return sql.delete("Member.delete",id);
    }

    public MemberDTO update2(Object email) {
        return sql.selectOne("Member.update2",email);
    }

    public void update3(MemberDTO memberDTO) {
        sql.update("Member.update3",memberDTO);
    }

//    public MemberDTO duplicatecheck(String memberEmail) {
//        return sql.selectOne("Member.check",memberEmail);
//    }
}
