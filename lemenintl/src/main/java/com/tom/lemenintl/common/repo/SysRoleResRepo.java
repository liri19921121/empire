package com.tom.lemenintl.common.repo;

import com.tom.lemenintl.common.entity.SysRoleResource;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SysRoleResRepo extends JpaRepository<SysRoleResource, Long> {
	void deleteByRoleId(Long roleId);
	@Query("select rr.resourceId  from SysRoleResource rr where rr.roleId = ?1")
	List<Long> T2705(Long roleId);
}
