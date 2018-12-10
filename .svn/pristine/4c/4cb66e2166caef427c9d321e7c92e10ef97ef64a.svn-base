package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransUserDataBloodSugar;
import com.tom.lemenintl.vo.T2609;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.List;

public interface TransUserDataBloodSugarRepo extends JpaRepository<TransUserDataBloodSugar, Long> {

	List<TransUserDataBloodSugar> findTop3ByRecordDateAndUserIdOrderByCreateTimeDesc(LocalDate recordDate, Long userId);

	@Query("select new com.tom.lemenintl.vo.T2609(t.glycemicIndex,t.isEmptyStomach,t.recordDate) "
			+ "from TransUserDataBloodSugar t  "
			+ "where t.createTime= (SELECT max(tt.createTime) FROM TransUserDataBloodSugar tt "
			+ "left join SysWeixinUser w on tt.userId=w.id "
	        + "where tt.recordDate >= ?1 and tt.userId = ?2 GROUP BY t.recordDate  ORDER BY t.recordDate ASc )  ")
	List<T2609>  T2609(LocalDate beginTime, Long userId);
}
