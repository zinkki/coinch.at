package aa.bb.cc.dto;

import org.springframework.stereotype.Repository;
import lombok.Data;

@Data
@Repository
public class DataDto {

	private int data_seq;
	private String data_id;
	private String data_pw;
	
	public int getData_seq() {
		return data_seq;
	}
	public void setData_seq(int data_seq) {
		this.data_seq = data_seq;
	}
	public String getData_id() {
		return data_id;
	}
	public void setData_id(String data_id) {
		this.data_id = data_id;
	}
	public String getData_pw() {
		return data_pw;
	}
	public void setData_pw(String data_pw) {
		this.data_pw = data_pw;
	}
	
	
	
}
