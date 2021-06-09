package hi_choi.spring.mvc.dao;

import hi_choi.spring.mvc.vo.Board;

import java.util.List;
import java.util.Map;

public interface BoardDAO {
    boolean insertBoard(Board b);
    boolean updateBoard(Board b);
    boolean deleteBoard(String bdno);

    List<Board> selectBoard(int snum);
    List<Board> findSelectBoard(Map<String, Object> param);
    Board selectOneBoard(String bdno);

    //게시글 수
    int selectCountBoard();
    int selectCountBoard(Map<String, Object> param);
    boolean viewCountBoard(String  bdno);
}
