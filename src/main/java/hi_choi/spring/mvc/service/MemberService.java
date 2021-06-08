package hi_choi.spring.mvc.service;

import hi_choi.spring.mvc.vo.Member;

import javax.servlet.http.HttpSession;

public interface MemberService {

    String newMember(Member m); //회원가입
    String findZipcode(String dong); //우편번호검색
    String checkUserid(String uid); // 회원정보체크
    boolean checkLogin(Member m, HttpSession sess);   //로그인 세션 관련
}
