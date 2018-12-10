package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransOverseaConsult;
import com.tom.lemenintl.vo.T2106;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;

public interface TransOverseaConsultRepo extends JpaRepository<TransOverseaConsult, Long> {

	Page<TransOverseaConsult> findByUserId(Long userId, Pageable pageable);
	
	@Query("select new com.tom.lemenintl.vo.T2106(t.id,w.id,w.userName,w.userLevel,t.consultTime,t.code,t.content,t.lastReplierAccountId,a.name,t.status,t.updateTime,t.overseaExpertId,a.username) "
			+ "from TransOverseaConsult t left join SysWeixinUser w on t.userId = w.id "
			+ "left join SysAccount a on t.overseaExpertId = a.id  "
			+ "where (cast(?1 as time) is null or t.consultTime >= ?1) and (cast(?2 as time) is null or t.consultTime <= ?2) and (?3 is null or t.status = ?3)"
			)
	Page<T2106> T2106(LocalDateTime consultTimeStart, LocalDateTime consultTimeEnd, String status, Pageable pageable);
	
	@Query("select new com.tom.lemenintl.vo.T2106(t.id,w.id,w.userName,w.userLevel,t.consultTime,t.code,t.content,t.lastReplierAccountId,a.name,t.status,t.updateTime,t.overseaExpertId,a.username) "
			+ "from TransOverseaConsult t left join SysWeixinUser w on t.userId = w.id "
			+ "left join SysAccount a on t.overseaExpertId = a.id  "
			+ "where (cast(?1 as time) is null or t.consultTime >= ?1) and (cast(?2 as time) is null or t.consultTime <= ?2) and (?3 is null or t.status = ?3)"
			)
	Page<T2106> T2107(LocalDateTime consultTimeStart, LocalDateTime consultTimeEnd, String status, Pageable pageable);
	
}
