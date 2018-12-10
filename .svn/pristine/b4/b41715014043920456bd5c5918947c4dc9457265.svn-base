package com.tom.lemenintl.utils;

import com.tom.lemenintl.common.entity.SysWeixinUser;
import com.tom.lemenintl.entity.*;

import java.text.DecimalFormat;

public class RecordCodeUtils {

	public static void genCode(Object entity) {
		if (entity == null) {
			return;
		}

		DecimalFormat df = new DecimalFormat("00000");
		if (entity instanceof TransFreeConsult) {
			((TransFreeConsult) entity).setCode("F" + df.format(((TransFreeConsult) entity).getId()));
		} else if (entity instanceof TransOverseaVideochat) {
			((TransOverseaVideochat) entity).setCode("V" + df.format(((TransOverseaVideochat) entity).getId()));
		} else if (entity instanceof TransOverseaConsult) {
			((TransOverseaConsult) entity).setCode("C" + df.format(((TransOverseaConsult) entity).getId()));
		} else if (entity instanceof TransVipProductApply) {
			((TransVipProductApply) entity).setCode("P" + df.format(((TransVipProductApply) entity).getId()));
		} else if (entity instanceof TransOverseaHospital) {
			((TransOverseaHospital) entity).setCode("H" + df.format(((TransOverseaHospital) entity).getId()));
		} else if (entity instanceof TransOverseaExpert) {
			((TransOverseaExpert) entity).setCode("E" + df.format(((TransOverseaExpert) entity).getId()));
		} else if (entity instanceof TransHealthArticle) {
			((TransHealthArticle) entity).setCode("A" + df.format(((TransHealthArticle) entity).getId()));
		} else if (entity instanceof TransHealthProduct) {
			((TransHealthProduct) entity).setCode("L" + df.format(((TransHealthProduct) entity).getId()));
		} else if (entity instanceof TransVipProduct) {
			((TransVipProduct) entity).setCode("S" + df.format(((TransVipProduct) entity).getId()));
		} else if (entity instanceof SysWeixinUser) {
			((SysWeixinUser) entity).setCode("U" + df.format(((SysWeixinUser) entity).getId()));
		} else if (entity instanceof TransUserMoodAdvice) {
			((TransUserMoodAdvice) entity).setCode("M" + df.format(((TransUserMoodAdvice) entity).getId()));
		}
	}

}
