package co.grandcircus.Capstone7;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

import co.grandcircus.Capstone7.entities.Recipe;

public class HitsResponse {
	@JsonProperty("hits")
	private List<Recipe> recipes;
	
}
