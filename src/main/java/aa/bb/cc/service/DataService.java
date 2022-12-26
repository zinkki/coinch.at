package aa.bb.cc.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aa.bb.cc.dto.DataDto;
import aa.bb.cc.mapper.DataMapper;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class DataService {

	@Autowired
	DataMapper mapper;
	
	//예제 리스트
	public List<DataDto> dataSelect() {
		return mapper.dataSelect();
	}
	
	//회원가입->인증번호전송
	public void sendMsg(String phone, int random_number) {
		String api_key = "NCSP5CZGVICCLMSE";
		String api_secret = "BUHBRAAPZCCZPPJER5O7E6OUZ4FUO57K";
		Message coolsms = new Message(api_key, api_secret);
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", phone);
		params.put("from", "01025883310");
		params.put("type", "SMS");
		params.put("text", "[CoinChat] 인증번호는 " + "[ " + random_number + " ]" + " 입니다.");
		
		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
	
	//아이디찾기(이름&핸드폰번호 로 아이디찾기) -> 핸드폰번호로 이메일(ID)보내주기
	public void sendEmail(String coin_user_phone, String coin_user_email) {
		String api_key = "NCSP5CZGVICCLMSE";
		String api_secret = "BUHBRAAPZCCZPPJER5O7E6OUZ4FUO57K";
		Message coolsms = new Message(api_key, api_secret);
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", coin_user_phone);
		params.put("from", "01025883310");
		params.put("type", "SMS");
		params.put("text", "[CoinChat] 고객님의 ID(이메일주소)는 " + "[ " + coin_user_email + " ]" + " 입니다.");
		
		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
	
	//PW찾기(이메일,폰번호 로 PW찾기) -> 핸드폰번호로 PW보내주기
	public void sendPW(String coin_user_phone, String coin_user_pw) {
		String api_key = "NCSP5CZGVICCLMSE";
		String api_secret = "BUHBRAAPZCCZPPJER5O7E6OUZ4FUO57K";
		Message coolsms = new Message(api_key, api_secret);
		
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", coin_user_phone);
		params.put("from", "01025883310");
		params.put("type", "SMS");
		params.put("text", "[CoinChat] 임시비밀번호는 " + "[ " + coin_user_pw + " ]" + " 입니다. 로그인하여 비밀번호를 변경해주세요.");
		
		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}
}
