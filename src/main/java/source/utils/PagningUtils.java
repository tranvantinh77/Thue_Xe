package source.utils;

import java.util.ArrayList;
import java.util.List;

public class PagningUtils {
	private int beginPage, size, listSize;
	private int num = 0;
	
	
	public PagningUtils(int beginPage, int size, int listSize) {
		this.beginPage = beginPage;
		this.size = size;
		this.listSize = listSize;
	}



	public List<Integer> pagning() {
		List<Integer> list = new ArrayList<>();
		
		int endPage = 0;
		if ((listSize % size) == 0) {
			num = listSize / size;
		}else {
			num = (listSize / size) + 1;
		}
		
		if (beginPage - 2 < 0) {
			beginPage = 0;
		}else {
			beginPage -= 2;
		}
		
		for (int i = 0; i < 5; i++) {
			if(beginPage+i >= num)break;
			list.add(beginPage+i);
		}
		endPage = beginPage + 10;
		if(endPage <= num) {
			list.add(endPage);
		}
		
		return list;
	}
	
	
	
	public int getBeginPage() {
		return beginPage;
	}



	public int getNum() {
		return num;
	}

	public boolean checkPage(int page, int number) {
		if(page == number) return true;
		else return false;
	}

//	public static void main(String[] args) {
//		PagningUtils p = new PagningUtils(0, 3, 5);
//		System.out.println(p.pagning());
//		System.out.println(p.getBeginPage());
//		System.out.println(p.getNum());
//	}
}
