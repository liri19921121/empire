package com.tom.lemenintl.service;

import com.tom.lemenintl.entity.TransDisease;
import com.tom.lemenintl.entity.TransOverseaExpert;
import com.tom.lemenintl.entity.TransOverseaHospital;
import com.tom.lemenintl.entity.TransOverseaHospitalDisease;
import com.tom.lemenintl.repo.TransDiseaseRepo;
import com.tom.lemenintl.repo.TransOverseaExpertRepo;
import com.tom.lemenintl.repo.TransOverseaHospitalDiseaseRepo;
import com.tom.lemenintl.repo.TransOverseaHospitalRepo;
import com.tom.lemenintl.utils.RecordCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;

/**
 * 医院、专家、疾病类服务
 * 
 * @author tommy
 *
 */
@Service
public class HospitalUnitService {
	@Autowired
	TransOverseaHospitalRepo TransOverseaHospitalRepo;

	@Transactional
	public void T2303(Long id, String name, Integer orderNum, String nationCode, String special, Boolean enable,
			Long coverFileId, String description) {
		TransOverseaHospital hospital;

		if (id == null)
			hospital = new TransOverseaHospital();
		else
			hospital = TransOverseaHospitalRepo.findById(id).get();

		hospital.setName(name);
		hospital.setOrderNum(orderNum);
		hospital.setNation(nationCode);
		hospital.setSpecial(special);
		hospital.setEnable(enable);
		hospital.setCoverFileId(coverFileId);
		hospital.setDescription(description);

		hospital.setUpdateTime(LocalDateTime.now());

		TransOverseaHospital savedHospital = TransOverseaHospitalRepo.save(hospital);

		if (id == null) {
			RecordCodeUtils.genCode(savedHospital);
			TransOverseaHospitalRepo.save(savedHospital);
		}
	}

	@Autowired
	TransOverseaHospitalDiseaseRepo TransOverseaHospitalDiseaseRepo;

	@Transactional
	public void T2304(Long hospitalId) {

		// 删除医院
		TransOverseaHospitalRepo.deleteById(hospitalId);

		// 删除医院疾病关系
		TransOverseaHospitalDisease example = new TransOverseaHospitalDisease();
		example.setHospitalId(hospitalId);
		example.setUpdateTime(null);
		example.setCreateTime(null);
		TransOverseaHospitalDiseaseRepo.deleteAll(TransOverseaHospitalDiseaseRepo.findAll(Example.of(example)));
	}

	@Autowired
	TransDiseaseRepo TransDiseaseRepo;

	@Transactional
	public void T2307(Long id, String name, Integer orderNum, Boolean enable) {

		TransDisease disease;
		if (id == null) {
			disease = new TransDisease();
		} else {
			disease = TransDiseaseRepo.findById(id).get();
		}
		disease.setName(name);
		disease.setOrderNum(orderNum);
		disease.setEnable(enable);

		disease.setUpdateTime(LocalDateTime.now());
		TransDisease saveDisease = TransDiseaseRepo.save(disease);
		if (id == null) {
			RecordCodeUtils.genCode(saveDisease);
			TransDiseaseRepo.save(saveDisease);
		}
	}

	@Transactional
	public void T2309(Long hospitalId, List<Long> diseaseIdList) {

		// 清除所有关系
		TransOverseaHospitalDiseaseRepo.deleteAll(TransOverseaHospitalDiseaseRepo.findByHospitalId(hospitalId));

		// 保存
		for (Long diseaseId : diseaseIdList) {
			TransOverseaHospitalDisease hospitalDisease = new TransOverseaHospitalDisease();
			hospitalDisease.setHospitalId(hospitalId);
			hospitalDisease.setDiseaseId(diseaseId);

			TransOverseaHospitalDiseaseRepo.save(hospitalDisease);
		}
	}

	@Autowired
	TransOverseaExpertRepo TransOverseaExpertRepo;

	@Transactional
	public void T2105(Long id, String name, Integer orderNum, String nationCode, Long hospitalId, String specialSkill,
			String description, Boolean enable, Long headImgFileId) {
		TransOverseaExpert expert;

		if (id == null)
			expert = new TransOverseaExpert();
		else
			expert = TransOverseaExpertRepo.findById(id).get();

		expert.setName(name);
		expert.setOrderNum(orderNum);
		expert.setNationCode(nationCode);
		expert.setOverseaExpertType("1");// 咨询
		expert.setNationCode(nationCode);
		expert.setHospitalId(hospitalId);
		expert.setSpecialSkill(specialSkill);
		expert.setDescription(description);
		expert.setEnable(enable);
		expert.setHeadImgFileId(headImgFileId);

		expert.setUpdateTime(LocalDateTime.now());

		TransOverseaExpert savedExpert = TransOverseaExpertRepo.save(expert);
		if (id == null) {
			RecordCodeUtils.genCode(savedExpert);
			TransOverseaExpertRepo.save(savedExpert);
		}
	}

	@Transactional
	public void T2203(Long id, String name, Integer orderNum, String nationCode, Long hospitalId, String specialSkill,
			String description, Boolean enable, Long headImgFileId) {
		TransOverseaExpert expert;

		if (id == null)
			expert = new TransOverseaExpert();
		else
			expert = TransOverseaExpertRepo.findById(id).get();

		expert.setName(name);
		expert.setOrderNum(orderNum);
		expert.setNationCode(nationCode);
		expert.setOverseaExpertType("2");// 咨询
		expert.setNationCode(nationCode);
		expert.setHospitalId(hospitalId);
		expert.setSpecialSkill(specialSkill);
		expert.setDescription(description);
		expert.setEnable(enable);
		expert.setHeadImgFileId(headImgFileId);

		expert.setUpdateTime(LocalDateTime.now());

		TransOverseaExpert savedExpert = TransOverseaExpertRepo.save(expert);
		if (id == null) {
			RecordCodeUtils.genCode(savedExpert);
			TransOverseaExpertRepo.save(savedExpert);
		}
	}

}
