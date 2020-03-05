package co.grandcircus.Capstone7;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestClientException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class RecipeController {

	@Autowired
	RecipeDao rDao;

	@RequestMapping("/")
	public ModelAndView showHome() {
		return new ModelAndView("index");
	}

	@RequestMapping("/search")
	public ModelAndView showSearch() {
		return new ModelAndView("search");
	}

	@PostMapping("/search")
	public ModelAndView showResults(@RequestParam(required = false) String label,
			@RequestParam(required = false) String dietLabels, @RequestParam(required = false) String healthLabels,
			@RequestParam(required = false) Integer from, @RequestParam(required = false) Integer to,
			RedirectAttributes redir) {
		try {
			List<Recipe> recipeList = rDao.findByCriteria(label, dietLabels, healthLabels, from, to);
			return new ModelAndView("results", "list", recipeList);
		} catch (RestClientException e) {
			redir.addFlashAttribute("message", "No results found!");
			return new ModelAndView("redirect:/search");
		}
	}

	@RequestMapping("/fav")
	public ModelAndView showFavorites() {
		List<Recipe> favList = getFavorites();
		return new ModelAndView("results", "list", favList);
	}
}
