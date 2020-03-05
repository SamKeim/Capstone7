package co.grandcircus.Capstone7.entities;

import java.util.Arrays;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Recipe {
	private String uri;
	private String url;
	private Ingredient[] ingredients;
	private String lbl;
	private String img;
	private String src;
	private Double yield;
	private String[] dietLbl;
	private String[] healthLbl;
	private String[] ingredientLines;
	private Double calories;
	private Double time;
	// TODO: see private Boolean isFav;

	
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

	public String getLbl() {
		return lbl;
	}

	public void setLbl(String lbl) {
		this.lbl = lbl;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public Double getYield() {
		return yield;
	}

	public void setYield(Double yield) {
		this.yield = yield;
	}

	public String[] getDietLbl() {
		return dietLbl;
	}

	public void setDietLbl(String[] dietLbl) {
		this.dietLbl = dietLbl;
	}

	public String[] getHealthLbl() {
		return healthLbl;
	}

	public void setHealthLbl(String[] healthLbl) {
		this.healthLbl = healthLbl;
	}

	public String[] getIngredientLines() {
		return ingredientLines;
	}

	public void setIngredientLines(String[] ingredientLines) {
		this.ingredientLines = ingredientLines;
	}

	public Double getCalories() {
		return calories;
	}

	public void setCalories(Double calories) {
		this.calories = calories;
	}

	public Double getTime() {
		return time;
	}

	public void setTime(Double time) {
		this.time = time;
	}

	public Ingredient[] getIngredients() {
		return ingredients;
	}

	public void setIngredients(Ingredient[] ingredients) {
		this.ingredients = ingredients;
	}

	public String getLabel() {
		return lbl;
	}

	public void setLabel(String label) {
		this.lbl = label;
	}

	public String getImage() {
		return img;
	}

	public void setSource(String image) {
		this.img = image;
	}

	
	
	@Override
	public String toString() {
		return "Recipe [uri=" + uri + ", url=" + url + ", ingredients=" + Arrays.toString(ingredients) + ", lbl=" + lbl
				+ ", img=" + img + ", src=" + src + ", yield=" + yield + ", dietLbl=" + Arrays.toString(dietLbl)
				+ ", healthLbl=" + Arrays.toString(healthLbl) + ", ingredientLines=" + Arrays.toString(ingredientLines)
				+ ", calories=" + calories + ", time=" + time + "]";
	}
	

}
