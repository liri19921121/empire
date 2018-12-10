package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransOverseaHospital;
import com.tom.lemenintl.vo.T1107;
import com.tom.lemenintl.vo.T2301;
import com.tom.lemenintl.vo.T2302;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TransOverseaHospitalRepo extends JpaRepository<TransOverseaHospital, Long> {

	Page<TransOverseaHospital> findByEnableIsTrue(Pageable pageable);

	List<TransOverseaHospital> findByEnableIsTrue();

	@Query(value = "select h from TransOverseaHospital h where exists (select 1 from TransOverseaHospitalDisease r where r.hospitalId = h.id and r.diseaseId = ?1) and h.enable = true"
	// countQuery = "select count(1) from trans_oversea_hospital h where exists
	// (select 1 from trans_oversea_hospital_disease r where r.hospital_id = h.id
	// and r.disease_id = ?1) and h.enable = true",
	)
	Page<TransOverseaHospital> findOverseaHospitalByDiseaseId(Long diseaseId, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2301(h.id,h.code,h.name,h.orderNum,d.display,h.special,h.enable,count(a.id),count(r.id)) "
			+ "from TransOverseaHospital h left join SysDictionary d on h.nation=d.value and d.type='nation' "
			+ "left join TransOverseaReferralApply a on a.hospitalId=h.id and a.status='2' "
			+ "left join TransOverseaReferralApply r on r.hospitalId=h.id " + "where ?1 is null or h.name like %?1% "
			+ "group by h.id,h.code,h.name,h.orderNum,d.display,h.special,h.enable")
	Page<T2301> T2301(String name, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2302(h.id,h.code,h.name,h.orderNum,h.nation,d.display,h.special,h.enable,h.coverFileId,h.description) "
			+ "from TransOverseaHospital h left join SysDictionary d on h.nation=d.value and d.type='nation' "
			+ "where h.id=?1")
	T2302 T2302(Long hospitalId);
	

	@Query("select new com.tom.lemenintl.vo.T1107(h.id,h.name,h.orderNum,d.display,h.special,h.coverFileId,h.description) "
			+ "from TransOverseaHospital h left join SysDictionary d on h.nation=d.value and d.type='nation' "
			+ "where h.id=?1")
	T1107 T1107(Long hospitalId);

	@Query(nativeQuery=true,value="SELECT * FROM trans_oversea_hospital t WHERE t.name like %?1% ")
	Page<TransOverseaHospital> T1120(String hospitalName, Pageable pageable);
}
