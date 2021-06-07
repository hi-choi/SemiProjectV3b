package hi_choi.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {

	@GetMapping("/join/agree")
	public String agree() {
		return "join/agree.tiles";
	}

	@GetMapping("/join/checkme")
	public String checkme() {
		return "join/checkme.tiles";
	}
	@GetMapping("/join/joinme")
	public String joinme() {
		return "join/joinme.tiles";
	}
	@GetMapping("/join/joinok")
	public String joinok() {
		return "join/joinok.tiles";
	}

	
}
