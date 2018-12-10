package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransUserHealthAdvice;
import com.tom.lemenintl.vo.T2611;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TransUserHealthAdviceRepo extends JpaRepository<TransUserHealthAdvice, Long> {
	@Query("select new com.tom.lemenintl.vo.T2611(t.userId,w.userName,e.id,e.name,t.createTime,t.unread,t.advice) "
			+ "from TransUserHealthAdvice t left join SysWeixinUser w on t.userId=w.id left join TransOverseaExpert e on t.adviserAccountId = e.id  "
			+ "where t.userId = ?1 order by t.createTime desc")
	List<T2611>  T2611(Long userId);
}
