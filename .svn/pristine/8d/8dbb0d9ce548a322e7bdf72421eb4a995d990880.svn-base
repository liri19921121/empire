package com.tom.lemenintl.service;

import com.tom.lemenintl.entity.TransDevice;
import com.tom.lemenintl.repo.TransDeviceRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

/**
 * 设备管理类服务
 * 
 * @author tommy
 *
 */
@Service
public class DeviceService {

	@Autowired
	TransDeviceRepo TransDeviceRepo;

	public void T1403(String deviceType, String deviceName, String deviceAttr1, String deviceAttr2, String deviceAttr3,
			String deviceAttr4, String deviceAttr5, Long userId) {

		TransDevice example = new TransDevice();
		example.setUserId(userId);
		example.setDeviceType(deviceType);
		example.setUpdateTime(null);
		example.setCreateTime(null);

		TransDeviceRepo.deleteAll(TransDeviceRepo.findAll(Example.of(example)));

		TransDevice device = new TransDevice();

		device.setUserId(userId);
		device.setDeviceType(deviceType);
		device.setDeviceName(deviceName);
		device.setDeviceAttr1(deviceAttr1);
		device.setDeviceAttr2(deviceAttr2);
		device.setDeviceAttr3(deviceAttr3);
		device.setDeviceAttr4(deviceAttr4);
		device.setDeviceAttr5(deviceAttr5);

		TransDeviceRepo.save(device);
	}

}
