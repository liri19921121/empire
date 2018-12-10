package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransDevice;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TransDeviceRepo extends JpaRepository<TransDevice, Long> {

	List<TransDevice> findByUserId(Long userId);
	
}
