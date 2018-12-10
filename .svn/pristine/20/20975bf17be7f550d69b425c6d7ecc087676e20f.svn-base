package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransUserDataMood;
import com.tom.lemenintl.vo.T2604;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;
import java.util.List;

public interface TransUserDataMoodRepo extends JpaRepository<TransUserDataMood, Long> {

	TransUserDataMood findTopByRecordDateAndUserIdOrderByCreateTimeDesc(LocalDate recordDate, Long userId);

	@Query("select new com.tom.lemenintl.vo.T2604(max(t.scroe),t.recordDate) "
			+ "from TransUserDataMood t left join SysWeixinUser w on t.userId=w.id "
	        + "where t.recordDate >= ?1 and t.userId = ?2 group by t.recordDate order by t.recordDate asc ")
	List<T2604>  T2605(LocalDate beginTime, Long userId);
}
