package springmvc.controller;

import java.util.ArrayList;
import java.util.List;

public class CostTest {

	public void recycle1(List<?> a) {
		long st = System.currentTimeMillis();
		int sum = 0;
		for(int k = 0; k < a.size(); k++) {
			sum+= k;
		}
		System.out.println("[recycle1]: "+(System.currentTimeMillis()-st));
	}
	
	public void recycle2(List<?> a) {
		long st = System.currentTimeMillis();
		int sum = 0;
		int i = a.size();
		for(int k = 0; k < i; k++) {
			sum+= k;
		}
		System.out.println("[recycle2]: "+(System.currentTimeMillis()-st));
	}
	
	public List<Integer> init() {
		List<Integer> a = new ArrayList<>();
		for(int k = 0; k < 1000000; k++) {
			a.add(k);
		}
		return a;
	}
	
	public static void main(String[] args) {
		CostTest t1 = new CostTest();
		CostTest t2 = new CostTest();
		
		t1.recycle1(t1.init());
		t2.recycle2(t2.init());
	}
}
