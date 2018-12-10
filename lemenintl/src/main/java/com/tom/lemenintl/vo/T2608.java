package com.tom.lemenintl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;

@Data
@AllArgsConstructor
public class T2608 {
		Integer systolic;
		Integer diastolic;
		Integer pulseRate;
		LocalDate recordDate;
}
