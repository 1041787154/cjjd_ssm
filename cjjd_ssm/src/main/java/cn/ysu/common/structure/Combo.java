package cn.ysu.common.structure;

public class Combo {
	
	private Integer id;
	private String text;
	
	public Combo(){
		super();
	}
	
	public Combo(Integer id, String text){
		this.id = id;
		this.text = text;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}
