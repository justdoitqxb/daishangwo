package com.dsw.service;

import java.util.List;

import com.dsw.bean.Catlog;

public interface CatlogService {
	public List<Catlog> getCatlogList();
	/**
     * ���Ŀ¼
     * @param Catlog
     */
	public void add(Catlog catlog);
	/**
     * �޸���Ϣ
     * @param Catlog
     */
	public boolean modify(Catlog catlog);
	/**
     * ɾ��һ��Ŀ¼
     * @param Catlog
     */
	public boolean delete(Catlog catlog);
}
