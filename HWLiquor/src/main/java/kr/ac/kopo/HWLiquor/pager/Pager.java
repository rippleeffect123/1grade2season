package kr.ac.kopo.HWLiquor.pager;

import java.util.ArrayList;
import java.util.List;


public class Pager {
	private int page = 1;
	private int perPage = 20;
	private float total;
	private int perGroup = 5;
	
	private Long originId = 0L;
	

	public Long getOriginId() {
		return originId;
	}
	public void setOriginId(Long originId) {
		this.originId = originId;
	}

	
	private String keyword;
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public int getPerGroup() {
		return perGroup;
	}
	public void setPerGroup(int perGroup) {
		this.perGroup = perGroup;
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
		
	}
	
	public int getLast() {
		return (int) Math.ceil(total / perPage);
	}
	
	public int getPrev() {
		return page <= perGroup ? 1 : (((page-1) / perGroup) - 1) * perGroup + 1;
	}
	
	public int getNext() {
		int next = (((page -1) / perGroup) + 1) * perGroup + 1;
		int last = getLast();
		
		return next < last ? next : last;
	}
	
	public List<Integer> getList() {
		List<Integer> list = new ArrayList<Integer>();
		
		int startPage = (((page -1) / perGroup) + 0) * perGroup + 1;
		
		for(int i=startPage; i < (startPage + perGroup) && i <= getLast(); i++)
			list.add(i);
		
		if(list.isEmpty())
			list.add(1);
		
		return list;
	}
	
	public String getQuery() {
		String query = "";
	
		if(keyword != null)
			query += "&keyword=" + keyword;
		
		return query;
	}
	
	

}
