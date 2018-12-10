package com.tom.lemenintl.repo;

import com.tom.lemenintl.entity.TransOverseaExpert;
import com.tom.lemenintl.vo.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface TransOverseaExpertRepo extends JpaRepository<TransOverseaExpert, Long> {

	@Query("select new com.tom.lemenintl.vo.T2101(e.id,e.code,e.name,e.orderNum,d.display,h.name,e.specialSkill,e.enable) "
			+ "from TransOverseaExpert e left join TransOverseaHospital h on e.hospitalId = h.id "
			+ "left join SysDictionary d on e.nationCode = d.value and d.type = 'nation' "
			+ "where e.overseaExpertType = '1' and (?1 is null or e.name like %?1%) and (?2 is null or e.hospitalId = ?2 )")
	Page<T2101> T2101(String name, Long hospitalId, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T2201(e.id,e.code,e.name,e.orderNum,d.display,h.name,e.specialSkill,e.enable) "
			+ "from TransOverseaExpert e left join TransOverseaHospital h on e.hospitalId = h.id "
			+ "left join SysDictionary d on e.nationCode = d.value and d.type = 'nation' "
			+ "where e.overseaExpertType = '2' and (?1 is null or e.name like %?1%) and (?2 is null or e.nationCode = ?2 ) and (?3 is null or e.enable = ?3 )")
	Page<T2201> T2201(String name, String nationCode, Boolean enable, Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T1103(e.id,e.name,e.orderNum,d.display,h.name,e.specialSkill,e.headImgFileId) "
			+ "from TransOverseaExpert e left join TransOverseaHospital h on e.hospitalId = h.id "
			+ "left join SysDictionary d on e.nationCode = d.value and d.type = 'nation' "
			+ "where e.overseaExpertType = '2'")
	Page<T1103> T1103(Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T1104(e.id,e.name,d.display,h.name,e.specialSkill,e.headImgFileId,e.description) "
			+ "from TransOverseaExpert e left join TransOverseaHospital h on e.hospitalId = h.id "
			+ "left join SysDictionary d on e.nationCode = d.value and d.type = 'nation' where e.id = ?1 ")
	T1104 T1104(Long expertId);

	@Query("select new com.tom.lemenintl.vo.T1111(e.id,e.name,e.orderNum,d.display,h.name,e.specialSkill,e.headImgFileId) "
			+ "from TransOverseaExpert e left join TransOverseaHospital h on e.hospitalId = h.id "
			+ "left join SysDictionary d on e.nationCode = d.value and d.type = 'nation' "
			+ "where e.overseaExpertType = '1'")
	Page<T1111> T1111(Pageable pageable);

	@Query("select new com.tom.lemenintl.vo.T1112(e.id,e.name,d.display,h.name,e.specialSkill,e.headImgFileId,e.description) "
			+ "from TransOverseaExpert e left join TransOverseaHospital h on e.hospitalId = h.id "
			+ "left join SysDictionary d on e.nationCode = d.value and d.type = 'nation' where e.id = ?1 ")
	T1112 T1112(Long expertId);
}
