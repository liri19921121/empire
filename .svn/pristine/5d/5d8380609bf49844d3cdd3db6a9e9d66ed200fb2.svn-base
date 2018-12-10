package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransHealthProduct;
import com.tom.lemenintl.vo.T2404;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;

public interface TransHealthProductRepo extends JpaRepository<TransHealthProduct, Long> {

	Page<TransHealthProduct> findByEnableIsTrue(Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2404(t.id,t.code,t.name,t.orderNum,t.readCount,t.shearCount,count(ya.id) ,count(yd.id) ,a.name,t.createTime,t.enable) "
			+ "from TransHealthProduct t left join SysAccount a on t.creatorAccountId = a.id "
			+ "left join TransHealthProductApply ya on t.id = ya.healthProductId "
			+ "left join TransHealthProductApply yd on t.id = yd.healthProductId and yd.status = '2' "
			+ "where (cast(?1 as time) is null or t.createTime >= ?1) and (cast(?2 as time) is null or t.createTime <= ?2) and (?3 is null or t.enable = ?3) "
			+ "group by t.id,t.code,t.name,t.orderNum,t.readCount,t.shearCount,a.name,t.createTime,t.enable")
	Page<T2404> T2404(LocalDateTime createTimeStart, LocalDateTime createTimeEnd, Boolean enable, Pageable pageable);

}
