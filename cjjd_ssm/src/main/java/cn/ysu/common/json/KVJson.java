package cn.ysu.common.json;

import java.util.HashMap;
import java.util.Map;

public class KVJson {
	
	private Map<String, Object> jsonMap;
	
	public KVJson(){
		jsonMap = new HashMap<String, Object>();
	}
	
	public static Map<String, Object> map(String key, Object value){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put(key, value);
		return map;
	}
	
	public KVJson append(String key, Object value){
		jsonMap.put(key, value);
		return this;
	}
	
}
