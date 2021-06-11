package hi_choi.spring.mvc.dao;

import hi_choi.spring.mvc.vo.Reply;

import java.util.List;

public interface BoardReplyDAO {

    List<Reply> selectReply(String bdno);
    //댓글
    int insertComment(Reply r);
    //대댓글
    int insertReply(Reply r);
}
