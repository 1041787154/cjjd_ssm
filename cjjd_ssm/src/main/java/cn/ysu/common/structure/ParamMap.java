package cn.ysu.common.structure;

import java.util.HashMap;
import java.util.Map;

public class ParamMap {
	
	private Map<String, Object> jsonMap;
	
	public ParamMap(){
		jsonMap = new HashMap<String, Object>();
	}
	
	public static Map<String, Object> map(String key, Object value){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(key, value);
		return map;
	}
	
	public ParamMap append(String key, Object value){
		jsonMap.put(key, value);
		return this;
	}
	
	public Map<String, Object> map(){
		return jsonMap;
	}
}
