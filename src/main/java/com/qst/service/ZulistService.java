package com.qst.service;

import java.util.List;

import com.qst.pojo.Zulist;

public interface ZulistService {
	public void insertzulist(Zulist zulist);

	public List<Zulist> findzuuserlist() throws Exception;

	public Zulist findzulist(String house_id);

	public void deletezulist(String house_id);

	public List<Zulist> findzulistbyuid(Integer userlist_id);
}
