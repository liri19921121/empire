package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransVipProductApply;
import com.tom.lemenintl.vo.T1417;
import com.tom.lemenintl.vo.T2506;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;

public interface TransVipProductApplyRepo extends JpaRepository<TransVipProductApply, Long> {

	@Query("select new com.tom.lemenintl.vo.T2506(t.id,t.code,w.id,w.userName,w.mobile,p.id,p.name,t.applyTime,t.status,s.id,s.username,t.handleTime,t.createTime) "
			+ "from TransVipProductApply t left join SysWeixinUser w on t.userId=w.id left join TransVipProduct p on t.vipProductId = p.id "
			+ "left join SysAccount s on t.handlerAccountId = s.id "
	        + "where (?1 is null or w.userName = ?1) and (?2 is null or w.mobile = ?2) and (cast(?3 as time) is null or t.applyTime >= ?3) and (cast(?4 as time) is null or t.applyTime <= ?4) "
			+ "and (cast(?5 as time) is null or t.createTime >= ?5) and (cast(?6 as time) is null or t.createTime <= ?6) Order By t.applyTime ASC")
	Page<T2506>  T2506(String userName, String userMobile, LocalDateTime applyTimeStart, LocalDateTime applyTimeEnd, LocalDateTime submitTimeStart, LocalDateTime submitTimeEnd, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T1417(t.id,t.vipProductId,p.name,t.applyTime,t.status) "
				+ "from TransVipProductApply t left join TransVipProduct p on t.vipProductId = p.id  Order By t.createTime ASC")
	Page<T1417> T1417(Long userId, Pageable pageable);

	TransVipProductApply findByUserIdAndVipProductId(Long userId, Long vipProductId);
	
}
