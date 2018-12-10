package com.tom.lemenintl.common.repo;

import com.tom.lemenintl.common.entity.SysWeixinUser;
import com.tom.lemenintl.common.vo.T2107;
import com.tom.lemenintl.vo.T2601;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;
import java.util.List;

public interface SysWeixinUserRepo extends JpaRepository<SysWeixinUser, Long> {

	List<SysWeixinUser> findByOpenId(String openId);
	
	@Query("select new com.tom.lemenintl.common.vo.T2107(u.id,u.userName,u.avatarUrl,u.mobile,u.userLevel)  from SysWeixinUser u where u.id = ?1")
	List<T2107> T2107(Long userId);
	
	/***
	 * 活跃度待修改,P001为登录接口名
	 */
	@Query("select new com.tom.lemenintl.vo.T2601(u.id,u.userName,u.userLevel,u.mobile,u.registeTime,u.lastLoginTime,u.lastAdviceTime,u.loginCount,count(l.id)) "
	      +"from SysWeixinUser u "
		  +"left join LogEvent l on l.userId = u.id where (l.eventMethod = 'P001' or l.eventMethod = null) "
	      +"and (?1 is null or u.userName = ?1) and (?2 is null or u.mobile = ?2) "
		  +"and (cast(?3 as time) is null or u.registeTime >= ?3) and (cast(?4 as time) is null or u.registeTime <= ?4) "
	      +"and (cast(?5 as time) is null or u.lastLoginTime >= ?5) and (cast(?6 as time) is null or u.lastLoginTime <= ?6) "
		  +" group by u.id having count(l.id) >= ?7 ")
	List<T2601> T2601(String userName, String moblie, LocalDateTime registeTimeStart, LocalDateTime registeTimeEnd,
                      LocalDateTime lastLoginTimeStart, LocalDateTime lastLoginTimeEnd, Long activity, Pageable pageable);

}
