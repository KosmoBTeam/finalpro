package mvc.model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BucketlistController {
	@RequestMapping(value = "/gobucketlist", method = RequestMethod.GET)
	public String defaultbucket() {
		return "final/list";
	}
}
