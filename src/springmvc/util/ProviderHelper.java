package springmvc.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

/**
 * 该方法为Provider提供解析后的参数，以用于provider的模糊查询
 * @author Season-Temple
 * 2019年5月16日 下午6:03:21
 * package springmvc.util
 * class-name ProviderHelper.java
 */
public class ProviderHelper {
	
	private static final String ID = "^\\d{1,2}$";
	private static final String NUMBER = "^\\d{4,}$";
	private static final String CHINESE = "^[\\u4e00-\\u9fa5]{2,4}$";
	private static final String SUBJECT = "^[\\w\\u4e00-\\u9fa5]{4,}+$";
	
	public List<Map<String, Object>> stringParser(String str) {
		Map<String, Object> smap = new HashMap<>();
		if(str==null) {
			return null;
		}
		String[] strs = str.trim().replaceAll(" ", "").split(",");
		for(int i=0;i<strs.length;i++) {
			System.out.println("第"+i+"个元素："+strs[i]);
		}
		List<Map<String, Object>> maplist = new ArrayList<>(); 
		for(String s: strs) {
			if(s.matches(ID)) {
				smap.put("sid", Integer.parseInt(s));
				maplist.add(smap);
			}
			else if(s.matches(NUMBER)) {
				smap.put("snum", Integer.parseInt(s));
				maplist.add(smap);
			}
			else if(s.endsWith("班")) {
				smap.put("cname", s);
				maplist.add(smap);
			}
			else if(s.matches(CHINESE)) {
				smap.put("sname", s);
				maplist.add(smap);
			}
			else if(s.matches(SUBJECT)) {
				smap.put("subject", s);
				maplist.add(smap);
			}
		}
		return maplist;
	}
	
	public static void main(String[] args) {
		ProviderHelper pv = new ProviderHelper();
		Scanner scan = new Scanner(System.in);
		if(scan.hasNextLine()) {
			String str = scan.nextLine();
			System.out.println(pv.stringParser(str).toString());
		}
	}
}
