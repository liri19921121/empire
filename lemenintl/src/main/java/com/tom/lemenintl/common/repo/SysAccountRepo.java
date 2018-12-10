package com.tom.lemenintl.common.repo;

import com.tom.lemenintl.common.entity.SysAccount;
import com.tom.lemenintl.common.vo.P001;
import com.tom.lemenintl.common.vo.T2707;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SysAccountRepo extends JpaRepository<SysAccount, Long> {

	List<SysAccount> findByUsername(String username);

	@Query("select new com.tom.lemenintl.common.vo.P001(a.username,a.name,a.accountType,a.roleId,r.roleName) "
			+ "from SysAccount a , SysRole r where a.roleId=r.id and a.id=?1")
	P001 P001(Long accountId);
	
	@Query("select new com.tom.lemenintl.common.vo.T2707(a.username,a.enable,a.name,r.roleName,a.id,r.id) "
			+ "from SysAccount a , SysRole r where a.roleId=r.id and a.username=?1")
	T2707 T2707(String userName);
	
	@Query("select new com.tom.lemenintl.common.vo.T2707(a.username,a.enable,a.name,r.roleName,a.id,r.id) "
			+ "from SysAccount a , SysRole r where a.roleId=r.id")
	Page<T2707> T2707(Pageable pageable);

}
