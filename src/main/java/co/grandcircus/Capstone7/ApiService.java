package co.grandcircus.Capstone7;

import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

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

	public Recipe displayRecipe(String uri) {
		String url = "https://api.edamam.com/search?q=" + uri + "&app_id=1aba9e71&app_key=d55c2a63a55637683ce6dc1e71f0a369";

		Recipe[] tempList = rt.getForObject(url, Recipe[].class);
		return tempList[0];
	}

	public SearchResult findByCriteria(String label, Integer fromInt){
//		Integer toInt = fromInt + 10;
		String urlString = "https://api.edamam.com/search?q=" + label + "&app_id=1aba9e71&app_key=d55c2a63a55637683ce6dc1e71f0a369";
		System.out.println(urlString);
		System.out.println("Tester");
//		if (!(dietLabel.isEmpty()) || (dietLabel != null)) {
//			url = url + "&diet=" + dietLabel;
//		}
//		
//		if(!(healthLabel.isEmpty()) || (healthLabel != null)) {
//			url = url + "&health=" + healthLabel;
//		}
//		urlString += "&from=" + fromInt + "&to=" + toInt;
		
		SearchResult returnResult = rt.getForObject(urlString, SearchResult.class);
		System.out.println("Tester 2!");
		return returnResult;
	}

}
