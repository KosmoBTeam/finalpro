package mvc.model;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PackageController {
	
		@RequestMapping(value = "gopackage", method = RequestMethod.GET)
		public String defaultpackage() {
			return "final/packageProduct";
		}
}
