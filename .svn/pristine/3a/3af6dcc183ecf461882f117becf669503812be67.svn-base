package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransFreeConsult;
import com.tom.lemenintl.vo.T2001;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;

public interface TransFreeConsultRepo extends JpaRepository<TransFreeConsult, Long> {

	Page<TransFreeConsult> findByUserId(Long userId, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2001(f.id,f.code,f.userId,w.userName,w.userLevel,f.consultTime,f.updateTime,f.content,f.lastReplierAccountId,a.name,f.status) "
			+ "from TransFreeConsult f left join SysWeixinUser w on f.userId = w.id "
			+ "left join SysAccount a on f.lastReplierAccountId = a.id "
			+ "where (cast(?1 as time) is null or f.consultTime >= ?1) and (cast(?2 as time) is null or f.consultTime <= ?2) and (?3 is null or f.status = ?3)")
	Page<T2001> T2001(LocalDateTime consultTimeStart, LocalDateTime consultTimeEnd, String status, Pageable pageable);
}
