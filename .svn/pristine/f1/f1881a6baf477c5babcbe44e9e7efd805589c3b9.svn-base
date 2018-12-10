package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransDisease;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TransDiseaseRepo extends JpaRepository<TransDisease, Long> {

	Page<TransDisease> findByEnableIsTrue(Pageable pageable);

	@Query("select d from TransDisease d where (?1 is null or d.name like %?1%) and d.enable is true")
	Page<TransDisease> T2305(String name, Pageable pageable);
}
