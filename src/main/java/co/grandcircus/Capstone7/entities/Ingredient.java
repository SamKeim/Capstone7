package co.grandcircus.Capstone7.entities;

public class Ingredient {
	private String text;

	
	
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	
	
	@Override
	public String toString() {
		return "Ingredient [text=" + text + "]";
	}
}
