package com.kh.rendez.baesung.search.model.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.baesung.search.model.vo.DetailClass;
import com.kh.rendez.baesung.search.model.vo.PageInfo;
import com.kh.rendez.baesung.search.model.vo.classCount;
import com.kh.rendez.baesung.search.model.vo.searchInfo;
import com.kh.rendez.baesung.search.model.vo.tClass;

@Repository("jsDao")
public class SearchDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public ArrayList<tClass> selectSearchList(String value, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("searchMapper.selectSearch",value, rowBounds);
	}

	public ArrayList<tClass> SearchCateMainList(String main, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("searchMapper.selectCateMainList", main, rowBounds);
	}

	public ArrayList<tClass> SearchCateSubList(String sub, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("searchMapper.SearchCateSubList", sub, rowBounds);
	}

	public int getListCount(searchInfo sInfo) {
		return sqlSession.selectOne("searchMapper.getListCount",sInfo);
	}

	public int getDetailListCount(searchInfo sInfo) {
		return sqlSession.selectOne("searchMapper.getDetailListCount",sInfo);
	}

	public ArrayList<tClass> selectSearchDetailList(ArrayList<DetailClass> dc, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		/*System.out.println(dc);*/
		List ar =new ArrayList();
		for(DetailClass d : dc) {
			ar.add(d.getlNo());
		}
			System.out.println(ar.toString());
		
		return (ArrayList)sqlSession.selectList("searchMapper.selectDetailSearch", ar, rowBounds);
	}

	public ArrayList<DetailClass> getDetailList(searchInfo sInfo) {
		return (ArrayList)sqlSession.selectList("searchMapper.getDetailList",sInfo);
	}

	public Collection<? extends classCount> selectRegionMain(searchInfo sInfo) {
		return (ArrayList)sqlSession.selectList("searchMapper.selectRegionMainCount",sInfo);
	}

	public Collection<? extends classCount> selectRegionSub(searchInfo sInfo) {
		return (ArrayList)sqlSession.selectList("searchMapper.selectRegionSubCount",sInfo);
	}

}
