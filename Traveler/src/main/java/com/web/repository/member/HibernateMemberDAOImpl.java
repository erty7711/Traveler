package com.web.repository.member;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.RandomStringUtils;
import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.web.model.member.MemberBean;
import com.web.service.member.GlobalService;

@Repository
@Transactional
@SuppressWarnings("unchecked")
public class HibernateMemberDAOImpl implements MemberDAO {
	@Autowired
	SessionFactory factory;

	@Override
	public boolean idExists(String memberId) throws IOException {
		boolean exist = false;
		Session session = factory.getCurrentSession();
		List<?> list = session.createQuery("from MemberBean where memberId = :memberId ")
				.setParameter("memberId", memberId).list();
		// .setString(0, memberId).list();
		if (list.size() > 0) {
			exist = true;
		}
		/*
		 * MemberBean mb = null; Session session = factory.getCurrentSession(); mb =
		 * session.get(MemberBean.class, memberId); if(mb!=null)exist = true;
		 */
		session.flush();
		return exist;
	}

	@Override
	public int saveMember(MemberBean member) throws SQLException {
		Session session = factory.getCurrentSession();
		int updateCount = 0;
		session.save(member);
		updateCount = 1;
		session.flush();
		return updateCount;
	}
	
	@Override
	@SuppressWarnings({ "rawtypes", "deprecation" })
	public int countNewMemberToday() {
		String sql = "select count(*) as cnt "
				+ "from Member "
				+ "where convert(varchar,registerTime,111)=convert(nvarchar,GETDATE(),111);";
		Session session=factory.getCurrentSession();//.openSession();
		//Transaction tx = session.beginTransaction();//應加此行及commit才可通，不然他會一直hold session，會錯500。
		SQLQuery query = session.createSQLQuery(sql);
		query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List results = query.list();
		Map m = (Map)results.get(0);
		int cnt = (int) m.get("cnt");
		//tx.commit();
		session.flush();
		return cnt;
	}

	@Override
	public int deleteMember(String memberId) {
		int count = 0;
		Session session = factory.getCurrentSession();
		MemberBean member = new MemberBean(memberId);
		session.delete(member);
		session.flush();
		count++;
		return count;
	}

	@Override
	public List<MemberBean> getAllMembers() {
		String hql = "FROM MemberBean order by registerTime desc";
		Session session = null;
		List<MemberBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		session.flush();
		return list;
	}

	@Override
	public MemberBean getMemberById(String memberId) {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		mb = session.get(MemberBean.class, memberId);
		// if(mb==null)throw new MemberNotFoundException(memberId);
		session.flush();
		return mb;
	}
	// 沒有要keep住id就不用此行
	// static private List<String> memberIDList = null;

	@Override
	public void updateMember(MemberBean member) {
		// String hql="UPDATE MemberBean SET =:point WHERE memberId=:memberId";
		Session session = factory.getCurrentSession();

		// int n=session.createQuery(hql)
		// Query n=session.createQuery(hql)//hibernate p.84
		// .setParameter("point",point)
		// .setParameter("memberId",memberId)
		// .executeUpdate();
		session.update(member);
		session.flush();
	}

	@Override
	public MemberBean checkIdPwd(String memberId, String password) throws IOException {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		mb = session.get(MemberBean.class, memberId);
		// if(mb==null)throw new MemberNotFoundException(memberId);
		if (mb == null || !password.equals(mb.getPassword())) {
			mb = null;
		}
		session.flush();
		return mb;

		// Session session=factory.getCurrentSession();
		// //檢查memberId與password是否正確
		// MemberBean mb=null;
		// String hql=" from MemberBean m WHRE m.memberId=? and m.password=?";
		// List<MemberBean> list=session.createQuery(hql)
		// .setParameter(0, memberId)
		// .setParameter(1, password).getResultList();
		//
		// if(list!=null && list.size()>0) {
		// mb = list.get(0);
		// }
		// return mb;
	}

	@Override
	public void changePwd(String memberId, String password) throws IOException {
		String hql = "UPDATE MemberBean SET =:password WHERE memberId=:memberId";
		Session session = factory.getCurrentSession();

		int n = session.createQuery(hql).setParameter("password", password).setParameter("memberId", memberId)
				.executeUpdate();
		session.flush();
	}

	@Override
	public MemberBean queryPwd(String memberId, Date bdate) throws IOException {
		MemberBean mb = null;
		Session session = factory.getCurrentSession();
		mb = session.get(MemberBean.class, memberId);
		if (mb == null || !bdate.equals(mb.getBirthday())) {
			mb = null;
		} else {
			String rdnPwd = ""; 
			String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
			rdnPwd = RandomStringUtils.random( 8, characters );
			String encodePassword = GlobalService.encryptString(rdnPwd);
			System.out.println( "rdnPwd="+rdnPwd );
			System.out.println( "encodePassword="+encodePassword );
			mb.setPassword(encodePassword);
			updateMember(mb);
		}
		session.flush();
		return mb;
	}
}