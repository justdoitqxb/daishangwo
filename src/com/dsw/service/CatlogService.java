package com.dsw.service;

import java.util.List;

import com.dsw.bean.Catlog;

public interface CatlogService {
	public List<Catlog> getCatlogList();
	/**
     * 添加目录
     * @param Catlog
     */
	public void add(Catlog catlog);
	/**
     * 修改信息
     * @param Catlog
     */
	public boolean modify(Catlog catlog);
	/**
     * 删除一个目录
     * @param Catlog
     */
	public boolean delete(Catlog catlog);
}
