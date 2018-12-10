package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransUserDataBloodPressure;
import com.tom.lemenintl.vo.T2608;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.List;

public interface TransUserDataBloodPressureRepo extends JpaRepository<TransUserDataBloodPressure, Long> {

	List<TransUserDataBloodPressure> findTop3ByRecordDateAndUserIdOrderByCreateTimeDesc(LocalDate recordDate, Long userId);


	@Query("select new com.tom.lemenintl.vo.T2608(t.systolic,t.diastolic,t.pulseRate,t.recordDate) "
			+ "from TransUserDataBloodPressure t  "
			+ "where t.createTime= (SELECT max(tt.createTime) FROM TransUserDataBloodPressure tt "
			+ "left join SysWeixinUser w on tt.userId=w.id "
	        + "where tt.recordDate >= ?1 and tt.userId = ?2 GROUP BY t.recordDate  ORDER BY t.recordDate ASc )  ")
	List<T2608>  T2608(LocalDate beginTime, Long userId);
}
