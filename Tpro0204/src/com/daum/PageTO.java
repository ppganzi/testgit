package com.daum;

import java.util.List;

import com.daum.BoardDTO;

public class PageTO {
	private int curPage = 1;
	private int perPage = 10;
	private int pageLine = 10;
	private int amount;
	private int totalPage;
	private int startNum;
	private int endNum;
	private int beginPageNum;
	private int stopPageNum;
	
	private List<BoardDTO> list;
	
	public PageTO() {
		executeAll();
	}
	public PageTO(int curPage) {
		this.curPage = curPage;
		executeAll();
	}
	public PageTO(int curPage, int perPage, int pageLine, int amount, int totalPage, int startNum, int endNum,
			int beginPageNum, int stopPageNum, List<BoardDTO> list) {
		super();
		this.curPage = curPage;
		this.perPage = perPage;
		this.pageLine = pageLine;
		this.amount = amount;
		this.totalPage = totalPage;
		this.startNum = startNum;
		this.endNum = endNum;
		this.beginPageNum = beginPageNum;
		this.stopPageNum = stopPageNum;
		this.list = list;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
		executeAll();
	}

	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}

	public int getPageLine() {
		return pageLine;
	}

	public void setPageLine(int pageLine) {
		this.pageLine = pageLine;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
		executeAll();
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}

	public int getBeginPageNum() {
		return beginPageNum;
	}

	public void setBeginPageNum(int beginPageNum) {
		this.beginPageNum = beginPageNum;
	}

	public int getStopPageNum() {
		return stopPageNum;
	}

	public void setStopPageNum(int stopPageNum) {
		this.stopPageNum = stopPageNum;
	}

	public List<BoardDTO> getList() {
		return list;
	}

	public void setList(List<BoardDTO> list) {
		this.list = list;
	}
	
	public void executeAll() {
		 totalPage = (amount-1)/perPage+1;
	      
	      startNum = (curPage -1) * perPage+1;
	      endNum = curPage * perPage;
	      if(endNum > amount) {
	         endNum = amount;
	         
	      }
	      
	      beginPageNum = ((curPage -1)/pageLine)*pageLine+1;
	      stopPageNum = beginPageNum +(pageLine -1);
	      if(stopPageNum > totalPage) {
	         stopPageNum = totalPage;
	      }
	}

	@Override
	public String toString() {
		return "PageTO [curPage=" + curPage + ", perPage=" + perPage + ", pageLine=" + pageLine + ", amount=" + amount
				+ ", totalPage=" + totalPage + ", startNum=" + startNum + ", endNum=" + endNum + ", beginPageNum="
				+ beginPageNum + ", stopPageNum=" + stopPageNum + ", list=" + list + "]";
	}
	
	
}
