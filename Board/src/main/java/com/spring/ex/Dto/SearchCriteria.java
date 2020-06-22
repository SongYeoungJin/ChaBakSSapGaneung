package com.spring.ex.Dto;

public class SearchCriteria extends Criteria{
	// 검색타입과 검색어를 쓸 수 있게 dto폴더에 생성
	private String searchType = "";
	private String keyword = "";
	 
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + "]";
	}
	
}
