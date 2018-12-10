package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransUserDataMeal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.List;

public interface TransUserDataMealRepo extends JpaRepository<TransUserDataMeal, Long> {

	TransUserDataMeal findTopByRecordDateAndUserIdOrderByCreateTimeDesc(LocalDate recordDate, Long userId);

	TransUserDataMeal findTopByUserIdOrderByCreateTimeDesc(Long userId);

	@Query("select t from TransUserDataMeal t left join SysWeixinUser w on t.userId=w.id "
	        + "where t.recordDate >= ?1 and t.userId = ?2  order by t.recordDate asc ")
	List<TransUserDataMeal>  T2607(LocalDate beginTime, Long userId);
}
