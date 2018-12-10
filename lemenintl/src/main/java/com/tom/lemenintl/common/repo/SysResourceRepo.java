package com.tom.lemenintl.common.repo;

import com.tom.lemenintl.common.entity.SysResource;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SysResourceRepo extends JpaRepository<SysResource, Long> {

	List<SysResource> findBySuperResourceId(Long superResourceId);
	
	@Query("select r  from SysRoleResource t left join SysResource r on t.resourceId = r.id where t.roleId = ?1  ")
	List<SysResource> P002(Long userId);

}
