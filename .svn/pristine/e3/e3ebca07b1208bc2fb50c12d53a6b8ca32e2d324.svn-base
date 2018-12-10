package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransUserDataWeight;
import com.tom.lemenintl.vo.T2610;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.List;

public interface TransUserDataWeightRepo extends JpaRepository<TransUserDataWeight, Long> {

	List<TransUserDataWeight> findTop3ByRecordDateAndUserIdOrderByCreateTimeDesc(LocalDate recordDate, Long userId);

	@Query("select new com.tom.lemenintl.vo.T2610(t.weight,t.BMI,t.recordDate) "
			+ "from TransUserDataWeight t  "
			+ "where t.createTime= (SELECT max(tt.createTime) FROM TransUserDataWeight tt "
			+ "left join SysWeixinUser w on tt.userId=w.id "
	        + "where tt.recordDate >= ?1 and tt.userId = ?2 GROUP BY t.recordDate  ORDER BY t.recordDate ASc )  ")
	List<T2610>  T2610(LocalDate beginTime, Long userId);
}
