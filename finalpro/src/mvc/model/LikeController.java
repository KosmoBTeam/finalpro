package mvc.model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LikeController {
	@RequestMapping(value = "/golike", method = {RequestMethod.GET, RequestMethod.POST} )
	public String defaultlike() {
		return "final/mylike";
	}
}
