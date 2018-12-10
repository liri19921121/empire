package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransOverseaReferralApply;
import com.tom.lemenintl.vo.T2310;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TransOverseaReferralApplyRepo extends JpaRepository<TransOverseaReferralApply, Long> {

	@Query("select new com.tom.lemenintl.vo.T2310(r.id,r.code,r.userId,u.userName,u.mobile,r.hospitalId,h.name,r.applyTime,r.status,r.handlerAccountId,a.name,r.handleTime) "
			+ "from TransOverseaReferralApply r " + "left join TransOverseaHospital h on r.hospitalId = h.id "
			+ "left join SysAccount a on r.handlerAccountId = a.id " + "left join SysWeixinUser u on r.userId = u.id ")
	Page<T2310> T2310(Pageable pageable);

}
