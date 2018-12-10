package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransOverseaConsultItem;
import com.tom.lemenintl.vo.T1412;
import com.tom.lemenintl.vo.T2107;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TransOverseaConsultItemRepo extends JpaRepository<TransOverseaConsultItem, Long> {
	
	Page<TransOverseaConsultItem> findByOverseaConsultId(Long overseaconsultid, Pageable pageable);
	
	@Query("select new com.tom.lemenintl.vo.T2107(t.id,w.id,w.userName,u.id,u.username,t.content,t.createTime) "
			+ "from TransOverseaConsultItem t left join SysAccount u on t.replierAccountId = u.id "
			+ "left join SysWeixinUser w on t.userId = w.id  "
			+ "where t.overseaConsultId = ?1 ORDER BY t.createTime ASC"
			)
	Page<T2107> T2107(Long overseaconsultid, Pageable pageable);
	
	
	@Query("select new com.tom.lemenintl.vo.T1412(t.id,w.id,w.userName,u.id,u.username,t.content,t.createTime,(case when t.userId=?1 then true else false end)) "
			+ "from TransOverseaConsultItem t left join SysAccount u on t.replierAccountId = u.id "
			+ "left join SysWeixinUser w on t.userId = w.id  "
			+ "where t.overseaConsultId = ?2 ORDER BY t.createTime ASC"
			)
	Page<T1412> T1412(Long userId, Long overseaconsultid, Pageable pageable);
	
}
