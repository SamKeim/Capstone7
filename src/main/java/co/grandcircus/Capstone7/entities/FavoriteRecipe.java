package co.grandcircus.Capstone7.Entities;

import javax.persistence.*;

@Entity
public class FavoriteRecipe {
	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String url;
	
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
	
	@Override
	public String toString() {
		return "FavoriteRecipe [id=" + id + ", url=" + url + "]";
	}
	
}
