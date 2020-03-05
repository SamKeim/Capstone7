package co.grandcircus.Capstone7.entities;

public class Recipe {
	private String url;
	//TODO: see private Boolean isFav;
	
	
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "Recipe [url=" + url + "]";
	}

}
