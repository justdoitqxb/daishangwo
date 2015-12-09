package com.dsw.dao;

import java.util.List;
import com.dsw.bean.Catlog;

public interface CatlogDao {
	public int insert(Catlog catlog);
	public int update(Catlog catlog);
	public int delete(Catlog catlog);
	public List<Catlog> selectAll();
	public List<Catlog> findChildByParentId(int parentId);	
}
