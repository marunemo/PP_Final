package com.localgift.giftlist;

import java.util.List;

public interface StoreService {
	public int insertStore(StoreVO vo);
	public int deleteStore(int id);
	public int updateStore(StoreVO vo);
	public StoreVO getStore(int seq);
	public List<StoreVO> getStoreList();
}