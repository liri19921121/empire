package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransUserMoodAdvice;
import com.tom.lemenintl.vo.T2708;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;
import java.util.List;

public interface TransUserMoodAdviceRepo extends JpaRepository<TransUserMoodAdvice, Long> {

	List<TransUserMoodAdvice> findByEnableIsTrue();
	
	@Query("select new com.tom.lemenintl.vo.T2708(t.id,t.title,t.adviceType,t.content,t.enable,a.name,t.createTime) "
			+ "from TransUserMoodAdvice t left join SysAccount a on t.creatorAccountId = a.id "
			+ "where (cast(?1 as time) is null or t.createTime >= ?1) and (cast(?2 as time) is null or t.createTime <= ?2) and (?3 is null or t.enable = ?3) and (?4 is null or t.adviceType = ?4)")
	Page<T2708> T2708(LocalDateTime createTimeStart, LocalDateTime createTimeEnd, Boolean enable, String adviceType, Pageable pageable);

}
