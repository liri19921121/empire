package com.tom.lemenintl.common.repo;

import com.tom.lemenintl.common.entity.SysRole;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SysRoleRepo extends JpaRepository<SysRole, Long> {
	List<SysRole> findByRoleName(String roleName);
}
