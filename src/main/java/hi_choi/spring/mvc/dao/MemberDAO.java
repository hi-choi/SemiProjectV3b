package hi_choi.spring.mvc.dao;

import hi_choi.spring.mvc.vo.Member;
import hi_choi.spring.mvc.vo.Zipcode;

import java.util.List;


public interface MemberDAO {

    // memberService 인터페이스 참조해 생성

    int insertMember(Member m);
    List<Zipcode> selectZipcode(String dong);
    int selectOneUserid(String uid);
    int selectLogin(Member m);
}
