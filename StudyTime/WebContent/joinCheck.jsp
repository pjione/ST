<%@page import="jdbc.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String gender = request.getParameter("gender");
	String phone = request.getParameter("phone");
	String image = "";
	
	if(userDAO.join(id, pw, name, nickname, gender, phone, image) == true){
		out.print("회원가입 성공");
	}	else{
		out.print("회원가입 실패");
	}
%>	