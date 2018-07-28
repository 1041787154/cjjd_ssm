package cn.ysu.common.json;

public class PagerJson {
	private Long total;
	private Object data;
	
	public PagerJson(Long total, Object data) {
		this.total = total;
		this.data = data;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	
}
