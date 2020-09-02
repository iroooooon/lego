package net.user.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserFrontController extends HttpServlet{

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("@@doProcess() 호출@@");
		
		//가상 주소 비교해서 처리
				String requestURI = request.getRequestURI();
				// = reqest.getRequestURI().toString();
				
				System.out.println("URI : "+requestURI);
				
				//프로젝트 명 가져오기
				String contextPath = request.getContextPath();
				System.out.println("ContextPath : "+contextPath);
				
				//실제 변경되는 가상 주소
				String command = requestURI.substring(contextPath.length());
				System.out.println("Command : "+command);
				System.out.println("@@@@ 주소 계산 완료 @@@@");
				////////////////////////////////////////////////////////////////////
				//계산된 가상 주소와 특정 페이지가 같으면 페이지의 동작에 따라서 이동
				
				//처리 페이지에 대한 정보 객체(인터페이스 - execute())
				Action action = null;
				
				//페이지 이동 정보 저장 객체
				ActionForward forward = null;
				
				
				//메인 페이지 처리
				if(command.equals("/Main.us")){
					//메인페이지 이동 처리
					// ./main.jsp 이동
					System.out.println("/Main.us 주소 요청");
					forward = new ActionForward();
					forward.setPath("./main.jsp");
					forward.setRedirect(false);
				}else if(command.equals("/UserLogin.us")){
					//로그인 페이지 이동
					//./user/loginForm.jsp 이동
					System.out.println("/UserLogin.us 주소 요청");
					forward = new ActionForward();
					forward.setPath("./user/loginForm.jsp");
					forward.setRedirect(false);
				}else if(command.equals("/UserLoginAction.us")){
					
				}else if(command.equals("/UserJoin.us")){
					//회원가입 페이지 이동
					//./user/joinForm.jsp 이동
					System.out.println("/UserJoin.us 주소 요청");
					forward = new ActionForward();
					forward.setPath("./user/joinForm.jsp");
					forward.setRedirect(false);
				}else if(command.equals("/UserJoinAction.us")){
					//회원가입 처리(Model)
					System.out.println("/UserJoinAction.us 주소 요청");
					action = new UserJoinAction();
				}
				//페이지 이동 처리
				if(forward != null){
					//페이지 이동 정보가 있을 때
					
					//페이지 이동 sendRedirect/forward
					if(forward.isRedirect()){
						//true
						response.sendRedirect(forward.getPath());
					}else{
						//false
						RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
						dis.forward(request, response);
					}
				}
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("@doGet() 호출@");
		doProcess(request,response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("@doPost() 호출@");
		doProcess(request,response);
	}

}
