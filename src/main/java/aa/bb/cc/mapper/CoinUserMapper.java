package aa.bb.cc.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import aa.bb.cc.dto.CoinUserDto;
import aa.bb.cc.dto.PagingDto;

@Mapper
public interface CoinUserMapper {

	//회원가입시 이메일 중복체크
	public int email_double_check(String coin_user_email);
	
	//회원가입시 핸드폰인증번호 보낼때 핸드폰번호 중복체크
	public int phone_double_check(String coin_user_phone);
	
	//회원가입 성공해서 데이터 user테이블에 데이터 집어넣을때
	public void join_ok(CoinUserDto dto);
	
	//로그인했을때 로그인성공 or 실패 췤
	public int login_check(String coin_user_email, String coin_user_pw);
	
	//로그인성공했을때 Admin(관리자)체크 coin_user_adminYN="Y" or "N"
	public String login_check_admin(String coin_user_email);
	
	//My -> 개인정보관리 페이지에서 데이터읽어올때 
	public HashMap<String,String> get_my_info(String coin_user_email);
	
	//My -> 개인정보관리 페이지에서 이름변경
	public void change_user_name(String coin_user_email, String coin_user_name);
	
	//My -> 개인정보관리 페이지에서 비밀번호 변경(비밀번호변경페이지)
	public void change_user_pw(String coin_user_email, String coin_user_pw);
	
	//My -> 개인정보관리 페이지에서 핸드폰번호 변경(폰번호 변경페이지)
	public void change_user_phone(String coin_user_email, String coin_user_phone);
	
	//아이디(이메일주소)찾기 ->이름이랑 핸드폰번호로 찾고, 핸드폰번호로 메일보내주는고임
	public int find_email(String coin_user_name, String coin_user_phone);
	
	//아이디(이메일주소)찾기 ->위에서 받은걸로 select email값 받아오기
	public String find_email_from_phone(String coin_user_phone);
	
	//패스워드찾기 ->이메일,폰번호 일치하는지 count값1이면 일치,0이면 불일치
	public int find_pw_from_email_phone(String coin_user_email, String coin_user_phone);
	
	//패스워드변경 ->패스워드찾기에서 이메일,폰번호 일치했을때 임시비밀번호로 PW UPDATE
	public void change_user_new_pw(String coin_user_email, String coin_user_phone, String coin_user_pw);
	
	//관리자(ADMIN) 페이지 - 유저 카운트
	public int userCountList();
	//관리자(ADMIN) 페이지 - 유저 리스트
	List<Map<String,Object>> user_all_list(PagingDto cri);
	//관리자 페이지 - 유저 정보 상세보기
	public CoinUserDto admin_user_info_detail(int coin_user_seq);
	
	//알람 N으로 바꾸기
	public void change_user_alarmN(String coin_user_email, String coin_user_alarmYN);
	//알람 Y로 바꾸기
	public void change_user_alarmY(String coin_user_email, String coin_user_alarmYN);
	
}
