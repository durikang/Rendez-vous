package com.kh.rendez.baesung.search.model.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
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
	
	public ArrayList<tClass> selectSearchList(searchInfo sInfo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("searchMapper.selectSearch",sInfo, rowBounds);
	}

	public ArrayList<tClass> SearchCateMainList(searchInfo sInfo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("searchMapper.selectCateMainList", sInfo, rowBounds);
	}

	public ArrayList<tClass> SearchCateSubList(searchInfo sInfo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("searchMapper.SearchCateSubList", sInfo, rowBounds);
	}

	public int getListCount(searchInfo sInfo) {
		return sqlSession.selectOne("searchMapper.getListCount",sInfo);
	}

	public int getDetailListCount(searchInfo sInfo) {
		return sqlSession.selectOne("searchMapper.getDetailListCount",sInfo);
	}

	public ArrayList<tClass> selectSearchDetailList(searchInfo sInfo, ArrayList<DetailClass> dc, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		/*System.out.println(dc);*/
		List ar =new ArrayList();
		for(DetailClass d : dc) {
			ar.add(d.getlNo());
		}
		//System.out.println(ar.toString());
		HashMap map = new HashMap();
		map.put("ar", ar);
		map.put("sInfo", sInfo);
		
		
		return (ArrayList)sqlSession.selectList("searchMapper.selectDetailSearch", map, rowBounds);
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

	public Collection<? extends classCount> selectRegionMainDetail(ArrayList<DetailClass> dc) {
		
		List ar =new ArrayList();
		for(DetailClass d : dc) {
			ar.add(d.getlNo());
		}
		return (ArrayList)sqlSession.selectList("searchMapper.selectRegionMainCountDeatil",ar);
	}

	public Collection<? extends classCount> selectRegionSubDetail(ArrayList<DetailClass> dc) {
		
		List ar =new ArrayList();
		for(DetailClass d : dc) {
			ar.add(d.getlNo());
		}
	
		return (ArrayList)sqlSession.selectList("searchMapper.selectRegionSubCountDeatil",ar);
	}

}
