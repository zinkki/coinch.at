package aa.bb.cc.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import aa.bb.cc.dto.Board_FaqDto;
import aa.bb.cc.dto.Board_NewsDto;
import aa.bb.cc.dto.Board_NoticeDto;
import aa.bb.cc.dto.PagingDto;

@Mapper
public interface BoardMapper {
	
	// -------------------- NOTICE START--------------------------------- //
	//공지사항 카운트 -KOR 
	public int noticeCountList();
	//공지사항 카운트 -ENG
	public int noticeCountList_e();
	//공지사항 리스트(페이징처리 한것) -KOR 
	List<Map<String,Object>> board_notice_list(PagingDto cri);
	//공지사항 리스트(페이징처리 한것) -ENG
	List<Map<String,Object>> board_notice_list_e(PagingDto cri);
	//공지사항 글쓰기 -KOR
	void board_notice_insert(String board_title, String board_content);
	//공지사항 글쓰기 -ENG
	void board_notice_insert_e(String board_title, String board_content);
	//공지사항 상세보기 -KOR
	public Board_NoticeDto notice_detail(int board_seq);
	//공지사항 상세보기 -ENG
	public Board_NoticeDto notice_detail_e(int board_seq);
	//공지사항 수정 -KOR
	void notice_modify(int board_seq, String board_title, String board_content);
	//공지사항 수정 -ENG
	void notice_modify_e(int board_seq, String board_title, String board_content);
	//공지사항 삭제 -KOR
	void notice_delete(int board_seq);
	//공지사항 삭제 -ENG
	void notice_delete_e(int board_seq);
	// -------------------- NOTICE END--------------------------------- //
	
	// -------------------- NEWS START--------------------------------- //
	//뉴스 카운트 KOR,ENG
	public int newsCountList();
	public int newsCountList_e();
	//뉴스 리스트(페이징처리 한것) KOR,ENG
	List<Map<String,Object>> board_news_list(PagingDto cri);
	List<Map<String,Object>> board_news_list_e(PagingDto cri);
	//뉴스 글쓰기 KOR,ENG
	void board_news_insert(String board_title, String board_content);
	void board_news_insert_e(String board_title, String board_content);
	//뉴스 상세보기 KOR,ENG
	public Board_NewsDto news_detail(int board_seq);
	public Board_NewsDto news_detail_e(int board_seq);
	//뉴스 수정 KOR,ENG
	void news_modify(int board_seq, String board_title, String board_content);
	void news_modify_e(int board_seq, String board_title, String board_content);
	//뉴스 삭제 KOR,ENG
	void news_delete(int board_seq);
	void news_delete_e(int board_seq);
	// -------------------- NEWS END--------------------------------- //
	
	// -------------------- FAQ START--------------------------------- //
	//FAQ 카운트 KOR,ENG
	public int faqCountList();
	public int faqCountList_e();
	//FAQ 리스트 KOR,ENG
	List<Map<String,Object>> board_faq_list(PagingDto cri);
	List<Map<String,Object>> board_faq_list_e(PagingDto cri);
	//FAQ 글쓰기 KOR,ENG
	void board_faq_insert(String board_title, String board_content);
	void board_faq_insert_e(String board_title, String board_content);
	//FAQ 상세보기 KOR,ENG
	public Board_FaqDto faq_detail(int board_seq);
	public Board_FaqDto faq_detail_e(int board_seq);
	//FAQ 수정 KOR,ENG
	void faq_modify(int board_seq, String board_title, String board_content);
	void faq_modify_e(int board_seq, String board_title, String board_content);
	//FAQ 삭제 KOR,ENG
	void faq_delete(int board_seq);
	void faq_delete_e(int board_seq);
	// -------------------- FAQ END--------------------------------- //
}
