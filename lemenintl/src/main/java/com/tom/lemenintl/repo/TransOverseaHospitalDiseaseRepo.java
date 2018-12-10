package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransOverseaHospitalDisease;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TransOverseaHospitalDiseaseRepo extends JpaRepository<TransOverseaHospitalDisease, Long> {

	List<TransOverseaHospitalDisease> findByHospitalId(Long hospitalId);
	
}
