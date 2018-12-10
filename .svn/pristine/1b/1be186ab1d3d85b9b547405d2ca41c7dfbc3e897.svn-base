package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransHealthArticle;
import com.tom.lemenintl.vo.T2401;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;

public interface TransHealthArticleRepo extends JpaRepository<TransHealthArticle, Long> {

	Page<TransHealthArticle> findByEnableIsTrue(Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2401(t.id,t.articleType,t.code,t.title,t.orderNum,t.enable,t.createTime,a.name,t.readCount,t.shearCount) "
			+ "from TransHealthArticle t left join SysAccount a on t.creatorAccountId = a.id "
			+ "where (cast(?1 as time) is null or t.createTime >= ?1) and (cast(?2 as time) is null or t.createTime <= ?2) and (?3 is null or t.enable = ?3)")
	Page<T2401> T2401(LocalDateTime createTimeStart, LocalDateTime createTimeEnd, Boolean enable, Pageable pageable);

}
