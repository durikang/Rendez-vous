package com.kh.rendez.manager.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.rendez.manager.model.vo.Coupon;
import com.kh.rendez.manager.model.vo.MemberJoinTutor;
import com.kh.rendez.manager.model.vo.MemberJoinUserpropic;
import com.kh.rendez.manager.model.vo.PageInfo;
import com.kh.rendez.manager.model.vo.Search;

@Repository("mnDao")
public class ManagerDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount(int n) {
		
		return sqlSession.selectOne("managerMapper.getListCount",n);
	}
	public int getListMemberSearchCount(Search search) {
		return sqlSession.selectOne("managerMapper.getListMemberSearchCount",search);
	}

	public ArrayList<MemberJoinUserpropic> selectMemberList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectMemberList", null, rowBounds);
	
	}

	public ArrayList<MemberJoinUserpropic> searchMemberList(Search search, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.searchMemberList",search,rowBounds);
	}
	public int insertCoupon(Coupon coupon) {
		
		return sqlSession.insert("managerMapper.insertCoupon",coupon);
	}
	public ArrayList<MemberJoinTutor> selectTutorList(PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("managerMapper.selectTutorList",null,rowBounds);

	}
	
	public int countTodayMember(int i) {
		return sqlSession.selectOne("managerMapper.countMember",i);
	}
	public int sumPay(int i) {
		return sqlSession.selectOne("managerMapper.sumPay",i);
	}

	
	
}
