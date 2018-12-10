package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransFreeConsultItem;
import com.tom.lemenintl.vo.T1409;
import com.tom.lemenintl.vo.T2002;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TransFreeConsultItemRepo extends JpaRepository<TransFreeConsultItem, Long> {

	@Query("select new com.tom.lemenintl.vo.T1409(t.id,w.id,w.userName,s.id,s.username,t.content,t.createTime,case when t.replierAccountId=?2 then true else false end)"
	        +" from TransFreeConsultItem t left join SysAccount s on t.replierAccountId = s.id "
			+"left join SysWeixinUser w on t.userId = w.id  where t.freeConsultId = ?1 order by t.createTime")
	Page<T1409> T1409(Long accountId, Long freeConsultId, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2002(i.id,i.userId,w.userName,i.replierAccountId,a.name,i.content,i.createTime,case when i.replierAccountId=?1 then true else false end) "
			+ "from TransFreeConsultItem i left join SysWeixinUser w on i.userId = w.id "
			+ "left join SysAccount a on i.replierAccountId = a.id " + "where i.freeConsultId = ?2")
	Page<T2002> T2002(Long accountId, Long freeConsultId, Pageable pageable);

}
