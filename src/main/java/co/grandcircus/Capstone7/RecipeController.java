package co.grandcircus.Capstone7;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RecipeController {
	
	@RequestMapping("/")
	public ModelAndView homePage() {
		return new ModelAndView("index");
	}

}
