package hi_choi.spring.mvc.controller;

import hi_choi.spring.mvc.service.BoardReplyService;
import hi_choi.spring.mvc.service.BoardService;
import hi_choi.spring.mvc.vo.Board;
import hi_choi.spring.mvc.vo.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

	//Autowired 정의 유형1
	//@Autowired private BoardService bsrv;
	//@Autowired private BoardReplyService brsrv;

	//Autowired 정의 유형2 - 생성자 사용
	private BoardService bsrv;
	private BoardReplyService brsrv;
	
	@Autowired
	public BoardController(BoardService bsrv, BoardReplyService brsrv) {
		this.bsrv = bsrv;
		this.brsrv = brsrv;
	}

	@GetMapping("/board/list")
	public ModelAndView list(ModelAndView mv, String cp) {
		if(cp==null) cp="1";
		mv.setViewName("board/list.tiles");
		mv.addObject("bds",bsrv.readBoard(cp));
		mv.addObject("bdcnt",bsrv.countBoard());

		return mv;
	}

	@GetMapping("/board/view")
	public ModelAndView view(String bdno, ModelAndView mv)
	{
		bsrv.viewCountBoard(bdno); // 조회수 처리
		mv.setViewName("board/view.tiles");
		mv.addObject("bd",bsrv.readOneBoard(bdno));
		// 댓글
		mv.addObject("rps",brsrv.readReply(bdno));

		return mv;
	}

	@GetMapping("/board/write")
	public String write() {
		return "board/write.tiles";
	}

	@PostMapping("/board/write")
	public String writeok(Board bd)
	{
		String returnPage = "redirect:/board/list";

		if(bsrv.newBoard(bd))
			System.out.println("입력완료!");

		return returnPage;
	}
	
	// 게시판 검색 기능 구현
	@GetMapping("/board/find")
	public ModelAndView find(ModelAndView mv,String cp, String findtype, String findkey){
		mv.setViewName("board/list.tiles");
		mv.addObject("bds",bsrv.readBoard(cp,findtype,findkey));
		mv.addObject("bdcnt",bsrv.countBoard(findtype,findkey));
		return mv;
	}

	// 댓글 쓰기
	@PostMapping("/reply/write")
	public String replyok(Reply r){
		String returnPage = "redirect:/board/view?bdno="+r.getBdno();
		brsrv.newComment(r);
		return returnPage;
	}

	// 대댓글 쓰기
	@PostMapping("/rreply/write")
	public String rreplyok(Reply r){
		String returnPage = "redirect:/board/view?bdno="+r.getBdno();
		brsrv.newReply(r);
		return returnPage;
	}

}
