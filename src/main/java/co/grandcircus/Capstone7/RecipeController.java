package co.grandcircus.Capstone7;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestClientException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.grandcircus.Capstone7.Entities.SearchResult;

@Controller
public class RecipeController {

//	@Autowired
//	RecipeDao rDao;
//	
	@Autowired
	private ApiService apiServ;

	@RequestMapping("/")
	public ModelAndView showHome() {
		return new ModelAndView("index");
	}

	@RequestMapping("/search")
	public ModelAndView showSearch() {
		return new ModelAndView("search");
	}

	@PostMapping("/search")
	public ModelAndView showResults(
			@RequestParam String lbl,
			@RequestParam(required=false) String dietLbls, 
			@RequestParam(required=false) String healthLbls,
			@RequestParam(required=false) Integer from, 
			RedirectAttributes redir) {
		try {
//			SearchResult results = apiServ.findByCriteria(lbl, dietLbls, healthLbls, from);
			System.out.println(lbl);
			
			SearchResult results = apiServ.findByCriteria(lbl, from);
			
//			List<Hit> hitList = results.getHits();
//			List<Recipe> recipeList = new ArrayList<>();
//			for (Hit hit : hitList) {
//				recipeList.add(hit.getRecipe());
//			}
			ModelAndView mav = new ModelAndView("results");
//			mav.addObject("list", recipeList);
//			mav.addObject("searchResults", results);
			return mav;
		} catch (RestClientException e) {
			e.printStackTrace();
			redir.addFlashAttribute("message", "No results found!");
			return new ModelAndView("redirect:/search");
		}
	}
//	@RequestMapping("/fav")
//	public ModelAndView showFavorites(
//			RedirectAttributes redir
//			) {
//		List<Recipe> favList = getFavorites();
//		if(favList.size() == 0) {
//			redir.addFlashAttribute("message", "No Favorites Found");
//			return new ModelAndView ("redirect:/search");
//		}
//		return new ModelAndView("results", "list", favList);
//	}
//	
//	@RequestMapping("/display")
//	public ModelAndView showSingle(
//			RedirectAttributes redir,
//			@RequestParam(required=false) String uri
//			) {
//		if (uri.isEmpty() || uri == null) {
//			redir.addFlashAttribute("message", "Recipe not found");
//			return new ModelAndView("redirect:/search");
//		}
//		return new ModelAndView("display", "uri", uri);
//	}
}