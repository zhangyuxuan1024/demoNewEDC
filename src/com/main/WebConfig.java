package com.main;

import java.util.ArrayList;
import java.util.List;

public class WebConfig {
	public static String TITLE = "EDC新皮肤界面";
	public static String PROJECTNAME = "植入型左心室辅助人工心脏 V0.1";

	public static String FOOTERNAME = "JetEDC数据管理系统";
	public static String COPYRIGHT = "ClinDM";

	public static String SUBJECTNO_DESC = "受试者筛选号";
	public static String SUBJECTINITIAL_DESC = "姓名缩写";
	public static String SUBJECTCODE_DESC = "随机号";

	public static List<Subject> initData() {
		List<Subject> plist = new ArrayList<Subject>();
		for (int i = 1; i < 11; i++) {
			Subject s = new Subject();
			if (i == 1) {
				s.setSiteNo("01-阜外医院");
				s.setRandomNo("2001111");
				s.setPersonName("zxc");
				s.setRegisterNo("" + i);
			} else if (i == 2) {
				s.setSiteNo("02-协和医院");
				s.setRandomNo("2002222");
				s.setPersonName("asd");
				s.setRegisterNo("" + i);
			} else if (i == 3) {
				s.setSiteNo("01-阜外医院");
				s.setRandomNo("2003333");
				s.setPersonName("zhj");
				s.setRegisterNo("" + i);
			} else if (i == 4) {
				s.setSiteNo("02-协和医院");
				s.setRandomNo("2004444");
				s.setPersonName("wec");
				s.setRegisterNo("" + i);
			} else if (i == 5) {
				s.setSiteNo("01-阜外医院");
				s.setRandomNo("2005");
				s.setPersonName("nhl");
				s.setRegisterNo("" + i);
			} else if (i == 6) {
				s.setSiteNo("01-阜外医院");
				s.setRandomNo("2005");
				s.setPersonName("nhl");
				s.setRegisterNo("" + i);
			} else if (i == 7) {
				s.setSiteNo("01-阜外医院");
				s.setRandomNo("2005");
				s.setPersonName("nhl");
				s.setRegisterNo("" + i);
			} else if (i == 8) {
				s.setSiteNo("01-阜外医院");
				s.setRandomNo("2005");
				s.setPersonName("nhl");
				s.setRegisterNo("" + i);
			} else if (i == 9) {
				s.setSiteNo("01-阜外医院");
				s.setRandomNo("2005");
				s.setPersonName("nhl");
				s.setRegisterNo("" + i);
			} else if (i == 10) {
				s.setSiteNo("01-阜外医院");
				s.setRandomNo("2005");
				s.setPersonName("nhl");
				s.setRegisterNo("" + i);
			}
			plist.add(s);
		}
		return plist;
	}
}
