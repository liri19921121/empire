package com.tom.lemenintl.common.repo;

import com.tom.lemenintl.common.entity.SysDictionary;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SysDictionaryRepo extends JpaRepository<SysDictionary, Long> {

	List<SysDictionary> findByTypeAndEnableIsTrueOrderByOrderNum(String type);
}
