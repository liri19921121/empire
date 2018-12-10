package com.tom.lemenintl.common.repo;

import com.tom.lemenintl.common.entity.LogSms;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface LogSmsRepo extends JpaRepository<LogSms, Long> {

	Optional<LogSms> findTopByUserIdAndMsgTypeAndStatusOrderByCreateTimeDesc(Long userId, String msgType, String status);
}
