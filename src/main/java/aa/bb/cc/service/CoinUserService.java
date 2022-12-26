package aa.bb.cc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aa.bb.cc.dto.CoinUserDto;
import aa.bb.cc.dto.PagingDto;
import aa.bb.cc.mapper.CoinUserMapper;

@Service
public class CoinUserService {
	
	@Autowired
	CoinUserMapper mapper;
	
	public int email_double_check(String coin_user_email) {
		return mapper.email_double_check(coin_user_email);
	}
	
	public int phone_double_check(String coin_user_phone) {
		return mapper.phone_double_check(coin_user_phone);
	}
	
	public void join_ok(CoinUserDto dto) {
		mapper.join_ok(dto);
	}
	
	public int login_check(String coin_user_email, String coin_user_pw) {
		return mapper.login_check(coin_user_email, coin_user_pw);
	}
	
	public HashMap<String,String> get_my_info(String coin_user_email) {
		return mapper.get_my_info(coin_user_email);
	}
	
	public void change_user_name(String coin_user_email, String coin_user_name) {
		mapper.change_user_name(coin_user_email, coin_user_name);
	}
	
	public void change_user_pw(String coin_user_email, String coin_user_pw) {
		mapper.change_user_pw(coin_user_email, coin_user_pw);
	}
	
	public void change_user_phone(String coin_user_email, String coin_user_phone) {
		mapper.change_user_phone(coin_user_email, coin_user_phone);
	}
	
	public int find_email(String coin_user_name, String coin_user_phone) {
		return mapper.find_email(coin_user_name, coin_user_phone);
	}
	
	public String find_email_from_phone(String coin_user_phone) {
		return mapper.find_email_from_phone(coin_user_phone);
	}
	
	public int find_pw_from_email_phone(String coin_user_email, String coin_user_phone) {
		return mapper.find_pw_from_email_phone(coin_user_email, coin_user_phone);
	}
	
	public void change_user_new_pw(String coin_user_email, String coin_user_phone, String coin_user_pw) {
		mapper.change_user_new_pw(coin_user_email, coin_user_phone, coin_user_pw);
	}
	
	public String login_check_admin(String coin_user_email) {
		return mapper.login_check_admin(coin_user_email);
	}
	
	//관리자(ADMIN)페이지 - 유저 카운트
	public int userCountList() {
		return mapper.userCountList();	}
	//관리자(ADMIN)페이지 - 유저 리스트
	public List<Map<String,Object>> user_all_list(PagingDto cri) {
		return mapper.user_all_list(cri);	}
	//관리자 페이지 - 유저 정보 상세보기
	public CoinUserDto admin_user_info_detail(int coin_user_seq) {
		return mapper.admin_user_info_detail(coin_user_seq);	}
	
	//알람 N 으로 바꾸기
	public void change_user_alarmN(String coin_user_email, String coin_user_alarmYN) {
		mapper.change_user_alarmN(coin_user_email, coin_user_alarmYN);
	}
	//알람 Y 로 바꾸기
	public void change_user_alarmY(String coin_user_email, String coin_user_alarmYN) {
		mapper.change_user_alarmY(coin_user_email, coin_user_alarmYN);
	}
}
