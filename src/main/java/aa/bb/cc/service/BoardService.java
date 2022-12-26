package aa.bb.cc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aa.bb.cc.dto.Board_FaqDto;
import aa.bb.cc.dto.Board_NewsDto;
import aa.bb.cc.dto.Board_NoticeDto;
import aa.bb.cc.dto.PagingDto;
import aa.bb.cc.mapper.BoardMapper;

@Service
public class BoardService {

	@Autowired
	BoardMapper mapper;
	
	// -------------------- NOTICE START --------------------------------- //
	//공지사항 카운트 KOR
	public int noticeCountList() {
		return mapper.noticeCountList(); }
	//공지사항 카운트 ENG
	public int noticeCountList_e() {
		return mapper.noticeCountList_e(); }
	//공지사항 리스트(페이징처리했음 KOR)
	public List<Map<String,Object>> board_notice_list(PagingDto cri) {
		return mapper.board_notice_list(cri); }
	//공지사항 리스트(페이징처리했음 ENG)
	public List<Map<String,Object>> board_notice_list_e(PagingDto cri) {
		return mapper.board_notice_list_e(cri); }
	//공지사항 글쓰기 KOR
	public void board_notice_insert(String board_title, String board_content) {
		mapper.board_notice_insert(board_title, board_content);	}
	//공지사항 글쓰기 ENG
	public void board_notice_insert_e(String board_title, String board_content) {
		mapper.board_notice_insert_e(board_title, board_content); }
	//공지사항 상세보기 KOR
	public Board_NoticeDto notice_detail(int board_seq) {
		return mapper.notice_detail(board_seq);	}
	//공지사항 상세보기 ENG
	public Board_NoticeDto notice_detail_e(int board_seq) {
		return mapper.notice_detail_e(board_seq);	}
	//공지사항 수정하기 KOR
	public void notice_modify(int board_seq, String board_title, String board_content) {
		 mapper.notice_modify(board_seq, board_title, board_content); }
	//공지사항 수정하기 ENG
	public void notice_modify_e(int board_seq, String board_title, String board_content) {
		mapper.notice_modify_e(board_seq, board_title, board_content); }
	//공지사항 삭제 KOR
	public void notice_delete(int board_seq) {
		mapper.notice_delete(board_seq); }
	//공지사항 삭제 ENG
	public void notice_delete_e(int board_seq) {
		mapper.notice_delete_e(board_seq); }
	// -------------------- NOTICE END --------------------------------- //
	
	// -------------------- NEWS START --------------------------------- //
	//뉴스 카운트 KOR,ENG
	public int newsCountList() {
		return mapper.newsCountList(); }
	public int newsCountList_e() {
		return mapper.newsCountList_e(); }
	//뉴스 리스트 KOR,ENG
	public List<Map<String,Object>> board_news_list(PagingDto cri) {
		return mapper.board_news_list(cri); }
	public List<Map<String,Object>> board_news_list_e(PagingDto cri) {
		return mapper.board_news_list_e(cri); }
	//뉴스 글쓰기 KOR,ENG
	public void board_news_insert(String board_title, String board_content) {
		mapper.board_news_insert(board_title, board_content); }	
	public void board_news_insert_e(String board_title, String board_content) {
		mapper.board_news_insert_e(board_title, board_content); }
	//뉴스 상세보기 KOR,ENG
	public Board_NewsDto news_detail(int board_seq) {
		return mapper.news_detail(board_seq); }
	public Board_NewsDto news_detail_e(int board_seq) {
		return mapper.news_detail_e(board_seq); }
	//뉴스 수정하기 KOR,ENG
	public void news_modify(int board_seq, String board_title, String board_content) {
		mapper.news_modify(board_seq, board_title, board_content); }
	public void news_modify_e(int board_seq, String board_title, String board_content) {
		mapper.news_modify_e(board_seq, board_title, board_content); }
	//뉴스 삭제 KOR,ENG
	public void news_delete(int board_seq) {
		mapper.news_delete(board_seq); }
	public void news_delete_e(int board_seq) {
		mapper.news_delete_e(board_seq); }
	// -------------------- NEWS END --------------------------------- //
	
	// -------------------- FAQ START --------------------------------- //
	//FAQ 카운트 KOR,ENG
	public int faqCountList() {
		return mapper.faqCountList(); }
	public int faqCountList_e() {
		return mapper.faqCountList_e(); }
	//FAQ 리스트 KOR,ENG
	public List<Map<String,Object>> board_faq_list(PagingDto cri) {
		return mapper.board_faq_list(cri); }
	public List<Map<String,Object>> board_faq_list_e(PagingDto cri) {
		return mapper.board_faq_list_e(cri); }
	//FAQ 글쓰기 KOR,ENG
	public void board_faq_insert(String board_title, String board_content) {
		mapper.board_faq_insert(board_title, board_content); }
	public void board_faq_insert_e(String board_title, String board_content) {
		mapper.board_faq_insert_e(board_title, board_content); }
	//FAQ 상세보기 KOR,ENG
	public Board_FaqDto faq_detail(int board_seq) {
		return mapper.faq_detail(board_seq); }
	public Board_FaqDto faq_detail_e(int board_seq) {
		return mapper.faq_detail_e(board_seq); }
	//FAQ 수정하기 KOR,ENG
	public void faq_modify(int board_seq, String board_title, String board_content) {
		mapper.faq_modify(board_seq, board_title, board_content); }
	public void faq_modify_e(int board_seq, String board_title, String board_content) {
		mapper.faq_modify_e(board_seq, board_title, board_content); }
	//FAQ 삭제 KOR,ENG
	public void faq_delete(int board_seq) {
		mapper.faq_delete(board_seq); }
	public void faq_delete_e(int board_seq) {
		mapper.faq_delete_e(board_seq); }
	// -------------------- FAQ END --------------------------------- //
}
