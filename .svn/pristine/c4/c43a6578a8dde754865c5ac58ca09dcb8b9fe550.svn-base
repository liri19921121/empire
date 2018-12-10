package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransHealthProductApply;
import com.tom.lemenintl.vo.T1419;
import com.tom.lemenintl.vo.T2407;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TransHealthProductApplyRepo extends JpaRepository<TransHealthProductApply, Long> {

	@Query("select new com.tom.lemenintl.vo.T2407(t.id,t.applyTime,t.healthProductId,p.name,t.userId,w.userName,w.mobile,t.status,t.productApplyReason) "
			+ "from TransHealthProductApply t left join SysWeixinUser w on t.userId=w.id left join TransHealthProduct p on t.healthProductId = p.id  Order By t.createTime ASC")
	Page<T2407>  T2407(Pageable pageable);
	
	@Query("select new com.tom.lemenintl.vo.T1419(t.id,t.healthProductId,p.name,t.status) "
			+ "from TransHealthProductApply t left join TransHealthProduct p on t.healthProductId=p.id where t.userId = ?1  Order By t.createTime ASC")
	Page<T1419>  T1419(Long UserId, Pageable pageable);

	TransHealthProductApply findByUserIdAndHealthProductId(Long userId, Long healthProductId);
	
}
