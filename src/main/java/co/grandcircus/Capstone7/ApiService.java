package co.grandcircus.Capstone7;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import co.grandcircus.Capstone7.Entities.Hit;
import co.grandcircus.Capstone7.Entities.Recipe;
import co.grandcircus.Capstone7.Entities.SearchResult;

@Component
public class ApiService {

	private RestTemplate rt;

	// initialization block that runs when a new instance of the class is created
	// loaded before the constructor
	{
		ClientHttpRequestInterceptor interceptor = (request, body, execution) -> {
			request.getHeaders().add(HttpHeaders.USER_AGENT, "ooeeee!");
			return execution.execute(request, body);
		};
		rt = new RestTemplateBuilder().additionalInterceptors(interceptor).build();
	}

	public Recipe displayRecipeSite(String uri) {
		String url = "https://api.edamam.com/search?q=" + uri + "&app_id=1aba9e71&app_key=d55c2a63a55637683ce6dc1e71f0a369";

		Recipe recipe = rt.getForObject(url, Recipe.class);
		return recipe;
	}
	
	public List<Recipe> getOneRecipe(String uri) {
		try {
			uri = URLEncoder.encode(uri, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
		String url = "https://api.edamam.com/search?r=" + uri + "&app_id=1aba9e71&app_key=d55c2a63a55637683ce6dc1e71f0a369";
		SearchResult result = rt.getForObject(url, SearchResult.class);
		List<Recipe> recipe = getRecipeList(result);
		return recipe;
	}


	public SearchResult findByCriteria(String label, String dietLbls, String healthLbls, Integer fromInt){
		Integer toInt = fromInt + 10;
		String url = "https://api.edamam.com/search?q=" + label + "&app_id=1aba9e71&app_key=d55c2a63a55637683ce6dc1e71f0a369";
		if (!dietLbls.equals("")) {
			url = url + "&diet=" + dietLbls;
		}
		
		if(!healthLbls.equals("")) {
			url = url + "&health=" + healthLbls;
		}
		url += "&from=" + fromInt + "&to=" + toInt;
		System.out.println(url);
		SearchResult returnResult = rt.getForObject(url, SearchResult.class);
		return returnResult;
	}
	
	public List<Recipe> getRecipeList(SearchResult results){
		List<Hit> hitList = results.getHits();
		
		List<Recipe> recipeList = new ArrayList<>();
		for (Hit hit : hitList) {
			recipeList.add(hit.getRecipe());
		}
		
		return recipeList;
	}

}
