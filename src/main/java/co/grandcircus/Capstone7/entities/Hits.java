package co.grandcircus.Capstone7.entities;

public class Hits {
	private Recipe recipe;

	
	
	public Recipe getRecipe() {
		return recipe;
	}

	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}

	
	
	@Override
	public String toString() {
		return "Hits [recipe=" + recipe + "]";
	}
	
}
