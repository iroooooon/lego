package net.user.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.user.db.UserDAO;
import net.user.db.UserDTO;

public class UserJoinAction implements Action{
	//회원가입 처리하는 Model 객체

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("UserJoinAction_execute() 호출");
		
		//한글 처리
		request.setCharacterEncoding("UTF-8");
		
		//전달된 회원 정보 저장 객체 생성
		UserDTO ud = new UserDTO();
		
		//전달된 파라미터 정보 저장
		ud.setUser_id(request.getParameter("user_id"));
		ud.setUser_password(request.getParameter("user_password"));
		ud.setUser_name(request.getParameter("user_name"));
		ud.setUser_email(request.getParameter("user_email"));
		ud.setUser_phone_number(request.getParameter("user_phone_number"));
		ud.setUser_birth(request.getParameter("user_birth"));
		ud.setPostcode(Integer.parseInt(request.getParameter("postcode")));
		ud.setRoad_name_addr(request.getParameter("road_name_addr"));
		ud.setA_lot_number_addr(request.getParameter("a_lot_number_addr"));
		ud.setDetail_addr(request.getParameter("detail_addr"));
		ud.setEtc_addr(request.getParameter("etc_addr"));
		
		System.out.println("ud : " + ud);
		
		//DAO 객체 생성
		UserDAO udao = new UserDAO();
		udao.userAdd(ud);
		return null;
	}

}
