package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransVipRealtimeChat;
import com.tom.lemenintl.vo.T1117;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TransVipRealtimeChatRepo extends JpaRepository<TransVipRealtimeChat, Long> {

	Page<TransVipRealtimeChat> findByVipUserId(Long vipUserId, Pageable pageable);
	
	/*@Query("select new com.tom.lemenintl.vo.T1117(t.id,w.userName,w.gender, date_part('year',age(now(), w.birthDate),t.createTime) "*/
			@Query("select new com.tom.lemenintl.vo.T1117(w.avatarUrl,t.id,w.id,w.userName,w.gender,w.birthDate,t.createTime,w.userName) "
			+ "from TransVipRealtimeChat t left join SysWeixinUser w on t.vipUserId = w.id "
			+ "where t.replierAccountId = ?1  And t.createTime = ( select max(tt.createTime) from TransVipRealtimeChat tt "
			+ " where tt.vipUserId = t.vipUserId) ")
	Page<T1117> T1117(Long doctorId, Pageable pageable);

	Page<TransVipRealtimeChat> findByReplierAccountIdAndVipUserIdOrderByCreateTimeAsc(Long replierAccountId, Long vipUserId, Pageable pageable);
}
