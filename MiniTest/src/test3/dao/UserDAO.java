package test3.dao;

import java.util.ArrayList;

import test3.dto.UserDTO;

public class UserDAO extends DAO{
	
	private static UserDAO instance;
	private ArrayList<UserDTO> userlist;
	
	public UserDAO getInstance() {
		userlist = new ArrayList<UserDTO>();
		if(instance == null) {
			instance = new UserDAO();
		}
		return instance;
	}
	
	
	private UserDAO() {
		super();
	}
	
	// 관리자페이지에서 유저 목록받기
	public ArrayList<UserDTO> selectAll(){
		String sql = "select * from user order by userid";
		
		return null;
	}
	
	
}
