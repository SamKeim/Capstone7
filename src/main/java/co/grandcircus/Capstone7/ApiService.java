package co.grandcircus.Capstone7;

import java.util.List;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import co.grandcircus.Capstone7.Entities.Recipe;

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
	
	public Recipe displayRecipe(String uri) {
		String url = "https://api.edamam.com/search?r=" + uri + "&app_id=1aba9e71&app_key=d55c2a63a55637683ce6dc1e71f0a369";
		Recipe[] tempList = rt.getForObject(url, Recipe[].class);
		return tempList[0];
	}
	
	public List<Recipe> findByCriteria(String label, String dietLabel, String healthLabel, Integer from, Integer to){
		String search = "";
		String url = "https://api.edamam.com/search?r=" + label + "&app_id=1aba9e71&app_key=d55c2a63a55637683ce6dc1e71f0a369";

		if (dietLabel != null) {
			url = url + "&diet=" + dietLabel;
		}
		
		Recipe[] tempList = rt.getForObject(url, Recipe[].class);
		
		return null;
	}
	
}
