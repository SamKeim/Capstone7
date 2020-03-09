package co.grandcircus.Capstone7.Entities;

import javax.persistence.*;

@Entity
public class FavoriteRecipe{
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
//	Recipe recipe;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}

//	public Recipe getRecipe() {
//		return recipe;
//	}
//
//	public void setRecipe(Recipe recipe) {
//		this.recipe = recipe;
//	}
	
	

}
