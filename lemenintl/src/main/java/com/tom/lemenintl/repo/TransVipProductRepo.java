package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransVipProduct;
import com.tom.lemenintl.vo.T2503;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TransVipProductRepo extends JpaRepository<TransVipProduct, Long> {

	Page<TransVipProduct> findByEnableIsTrueAndVipProductType(String VipProductType, Pageable pageable);

	Page<TransVipProduct> findByEnableIsTrue(Pageable pageable);

	
	@Query("select new com.tom.lemenintl.vo.T2503(p.id,p.code,p.name,p.orderNum,p.vipProductType,p.servicePeriod,p.applyTimeStart1,p.applyTimeEnd1,p.applyTimeStart2,p.applyTimeEnd2,p.maxCount,p.enable,count(y.id),a.name,p.createTime) "
			+ "from TransVipProduct p left join SysAccount a on p.creatorAccountId = a.id "
			+ "left join TransVipProductApply y on p.id = y.vipProductId and y.status in ('1','2') "
			+ "group by p.id,p.code,p.name,p.orderNum,p.vipProductType,p.servicePeriod,p.applyTimeStart1,p.applyTimeEnd1,p.applyTimeStart2,p.applyTimeEnd2,p.maxCount,p.enable,a.name,p.createTime")
	Page<T2503> T2503(Pageable pageable);
}
