package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransOverseaVideochat;
import com.tom.lemenintl.vo.T1414;
import com.tom.lemenintl.vo.T1415;
import com.tom.lemenintl.vo.T2204;
import com.tom.lemenintl.vo.T2205;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDate;

public interface TransOverseaVideochatRepo extends JpaRepository<TransOverseaVideochat, Long> {

	Page<TransOverseaVideochat> findByUserId(Long userId, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2204(t.id,t.code,t.userId,w.userName,w.userLevel,t.overseaExpertId,u.name,t.submitTime,t.scheduledDateStart,t.scheduledDateEnd,t.status) "
			+ "from TransOverseaVideochat t left join SysWeixinUser w on t.userId = w.id "
			+" left join TransOverseaExpert u on t.overseaExpertId = u.id ")
	Page<T2204> T2204(Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2205(t.id,t.overseaExpertId,u.name,h.name,t.scheduledDateStart,t.scheduledDateEnd,t.question1,t.question2,t.question3,t.question4,t.question5"
			+ ",t.attachmentFile1,t.attachmentFile2,t.attachmentFile3,t.attachmentFile4,t.attachmentFile5,t.status,t.rejectReson,t.comfirmReson,t.comfirmTime)"
			+ "from TransOverseaVideochat t left join SysWeixinUser w on t.userId = w.id "
			+" left join TransOverseaExpert u on t.overseaExpertId = u.id left join TransOverseaHospital h on u.hospitalId = h.id where t.id = ?1")
	T2205 T2205(Long overseaVideochatId);

	@Query("select new com.tom.lemenintl.vo.T1414(t.id,t.overseaExpertId,e.name,e.headImgFileId,t.unread,t.status) "
				+ "from TransOverseaVideochat t left join TransOverseaExpert e on t.overseaExpertId = e.id where t.userId = ?1")
		Page<T1414> T1414(Long userId, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T1415(t.id,t.overseaExpertId,e.name,t.question1,t.question2,t.question3,t.question4,t.question5,t.scheduledDateStart,t.scheduledDateEnd,"
	       +" t.content,t.comfirmTime,t.attachmentFile1,t.attachmentFile2,t.attachmentFile3,t.attachmentFile4,t.attachmentFile5,t.status) "
			+ "from TransOverseaVideochat t left join TransOverseaExpert e on t.overseaExpertId = e.id where t.userId = ?1")
	Page<T1415> T1415(Long userId, Pageable pageable);

	@Query("select count(1) from TransOverseaVideochat t where t.scheduledDateStart = ?1  and t.overseaExpertId = ?2")
	Long T1119(LocalDate start, Long overseaExpertId);
	
}
