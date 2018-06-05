package com.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserAction {
	static String siteNo;
	static String randomNo;
	static String personName;
	static List<Subject> slist;

	@RequestMapping(value = "/ajax.action", method = RequestMethod.POST, produces = "test/html;charset=utf-8")
	@ResponseBody
	public String addUser(HttpServletRequest request) {
		siteNo = request.getParameter("siteNo");
		randomNo = request.getParameter("randomNo");
		personName = request.getParameter("personName");
		System.out.println("UserAction接收到了：siteNo=" + siteNo + ";randomNo=" + randomNo + ";personName=" + personName);
		String result = "UserAction接收到了：siteNo=" + siteNo + ";randomNo=" + randomNo + ";personName=" + personName;
		
/*		slist = WebConfig.initData();
		Subject s = new Subject();
		s.setSiteNo(siteNo);
		s.setRandomNo(randomNo);
		s.setPersonName(personName);
		s.setRegisterNo("3");
		slist.add(s);*/
		
		return result;
	}
	public static List<Subject> get_userinfo(){
		List<Subject> slist = WebConfig.initData();
		if(siteNo != null && randomNo != null && personName != null){
			Subject s = new Subject();
			s.setSiteNo(siteNo);
			s.setRandomNo(randomNo);
			s.setPersonName(personName);
			s.setRegisterNo("3");
			slist.add(s);
		}
		return slist;
	}
}
