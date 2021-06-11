package hi_choi.spring.mvc.service;

import hi_choi.spring.mvc.vo.Reply;

import java.util.List;

public interface BoardReplyService {

    List<Reply> readReply(String bdno);

    //댓글
    boolean newComment(Reply r);
    
    //대댓글
    boolean newReply(Reply r);


}
