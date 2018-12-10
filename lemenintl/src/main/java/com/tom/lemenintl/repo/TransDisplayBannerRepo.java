package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransDisplayBanner;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TransDisplayBannerRepo extends JpaRepository<TransDisplayBanner, Long> {

	List<TransDisplayBanner> findByEnableIsTrueAndBannerTypeOrderByOrderNum(String bannerType);
}
