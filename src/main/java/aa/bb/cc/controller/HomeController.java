package aa.bb.cc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import aa.bb.cc.dto.Board_FaqDto;
import aa.bb.cc.dto.Board_NewsDto;
import aa.bb.cc.dto.Board_NoticeDto;
import aa.bb.cc.dto.CoinUserDto;
import aa.bb.cc.dto.DataDto;
import aa.bb.cc.dto.PageMaker;
import aa.bb.cc.dto.PagingDto;
import aa.bb.cc.service.BoardService;
import aa.bb.cc.service.CoinUserService;
import aa.bb.cc.service.DataService;

@Controller
public class HomeController {

	@Autowired
	DataService service;
	
	@Autowired
	BoardService b_service;
	
	@Autowired
	CoinUserService u_service;
	
	@Autowired
    LocaleResolver localeResolver;
	@Autowired
    MessageSource messageSource;
	
	//private String path_upload = "C:/Users/zinkki/eclipse-workspace/coin/src/main/webapp/resources/file_upload";
	
	@RequestMapping("/")
	public String main(HttpServletRequest request) {
		//System.out.println(request.getServletContext().getRealPath("/"));
		return "coin_main";
	}
	@RequestMapping("/loca")
	public String locaTest(Locale locale, HttpServletRequest request, Model model) {
		model.addAttribute("clientLocale", locale);
		model.addAttribute("sessionLocale", localeResolver.resolveLocale(request));
		model.addAttribute("siteCount", messageSource.getMessage("msg.first",null, locale));
		return "/localeTest";
	}
	//??????????????? 
	@RequestMapping("/main")
	public String locale_main(Locale locale, HttpServletRequest request, Model model) {
		model.addAttribute("clientLocale", locale);
		model.addAttribute("sessionLocale", localeResolver.resolveLocale(request));
		model.addAttribute("siteCount", messageSource.getMessage("msg.first",null, locale));
		return "/coin_main";
	}
	//??????????????????
	@RequestMapping("/login")
	public String loginPage() {
		return "coin_login";
	}
	//?????????????????????
	@RequestMapping("/join")
	public String joinPage() {
		return "coin_join";
	}
	//???????????? ?????????(ID)????????????
	@ResponseBody
	@RequestMapping("/double_email_check")
	public String double_email_Check(@RequestParam String coin_user_email) {
		String result = "data";
		int check_result = 0;
		check_result = u_service.email_double_check(coin_user_email);
		if(check_result == 0) { //???????????? OK
			result = "success";
		}else {					//???????????? FAILED...
			result = "data";
		}
		return result;
	}
	//1.???????????? ??????????????? ???????????????????????????, ??????????????? ????????????
	//2.My->??????????????????->????????????????????? ????????????????????? ????????????
	@ResponseBody
	@RequestMapping("/double_phone_check")
	public String double_phone_Check(@RequestParam String coin_user_phone) {
		System.out.println(coin_user_phone);
		String result = "data";
		int check_result = 0;
		check_result = u_service.phone_double_check(coin_user_phone);
		if(check_result == 0) {//???????????? ??????
			result = "success"; 
			System.out.println(result);
		}else {				   //???????????? FAILED...
			result = "data";
			System.out.println(result);
		}
		return result;
	}
	//1.????????????>??????????????????
	//2.My->??????????????????->?????????????????? ?????????????????????
	@ResponseBody
	@RequestMapping("/join_auth_num")
	public String auth_num_get(@RequestParam String coin_user_phone) {
		int random_number = (int)((Math.random() * (9999-1000+1)) + 1000); //??????4??????
		service.sendMsg(coin_user_phone, random_number);
		System.out.println(random_number);
		return Integer.toString(random_number);
	}
	//???????????? ??????
	@ResponseBody
	@RequestMapping("/join_ok")
	public String join_okok(@RequestParam String coin_user_email, String coin_user_pw, 
							String coin_user_name, String coin_user_birth, String coin_user_phone, 
							String coin_user_alarmYN, @ModelAttribute CoinUserDto dto,
							HttpServletRequest request, HttpSession session) {
		dto.setCoin_user_email(coin_user_email);
		dto.setCoin_user_pw(coin_user_pw);
		dto.setCoin_user_name(coin_user_name);
		dto.setCoin_user_birth(coin_user_birth);
		dto.setCoin_user_phone(coin_user_phone);
		dto.setCoin_user_alarmYN(coin_user_alarmYN);
		u_service.join_ok(dto);
		session = request.getSession();
		session.setAttribute("coin_user_email", dto.getCoin_user_email());
		session.setAttribute("check_admin", dto.getCoin_user_adminYN());
		String result = "ok";
		return result;
	}
	//???????????? ??????????????????? ?????? ??????????????????
	@RequestMapping("/join_success")
	public String join_successPage() {
		return "/join_successPage";
	}
	//?????????????????? ????????? ?????? ??????(??????????????? ???????????? ??????????????? ????????????????????? ??????????????????)
	@ResponseBody
	@RequestMapping("/join_success_session_check")
	public String joinSuccessSessionCheck(HttpServletRequest request, HttpSession session,
									@RequestParam String session_email) {
		if(session_email.equals("null")) {
			session_email = "empty"; //?????? ????????????(?????????)
		}
		return session_email;
	}
	//????????????
	@RequestMapping("/logout")
	public String logout_go(HttpServletRequest request, HttpSession session) {
		session = request.getSession();
		session.invalidate();
		return "/coin_main";
	}
	//????????? ??????(CHECK-CHECK)
	@ResponseBody
	@RequestMapping("/login_check")
	public String loginCheck(HttpServletRequest request, HttpSession session,
							@RequestParam String coin_user_email, String coin_user_pw) {
		String result = "";
		String check_admin = "N";
		int check_result = 0;
		check_result = u_service.login_check(coin_user_email, coin_user_pw);
		if(check_result == 1) {//OK
			result = "ok";
			session = request.getSession();
			session.setAttribute("coin_user_email", coin_user_email);
			
			check_admin = u_service.login_check_admin(coin_user_email);
			session.setAttribute("check_admin", check_admin);
			
			//System.out.println(check_admin);
			
		}else {				   //NOPE
			result = "not_ok";
		}
		
		return result;
	}
	//?????????????????? ?????? ??????(??????????????? ?????????????????? ????????????????????? ??????????????????)
	@ResponseBody
	@RequestMapping("/login_session_check")
	public String loginSessionCheck(HttpServletRequest request, HttpSession session,
									@RequestParam String session_email) {
		if(session_email.equals("null")) {
			session_email = "empty"; //??????????????????(??????)
		}
		return session_email;
	}
	//????????????????????? ?????? ??????(??????????????? ????????????????????? ????????????????????? ??????????????????)
	@ResponseBody
	@RequestMapping("/join_session_check")
	public String joinSessionCheck(HttpServletRequest request, HttpSession session,
								   @RequestParam String session_email) {
		if(session_email.equals("null")) {
			session_email = "empty";
		}
		return session_email;
	}
	//??????????????? ?????? ??????(??????????????? ??????????????? ????????????????????? ??????????????????)
	@ResponseBody
	@RequestMapping("/my_session_check")
	public String mySessionCheck(HttpServletRequest request, HttpSession session,
								@RequestParam String session_email) {
		if(!session_email.equals("null")) {
			session_email = "not_empty";
		}
		return session_email;
	}
	//???????????????
	@RequestMapping("/my")
	public String mypage() {
		return "/coin_my";
	}
	//?????????????????? ?????????
	@RequestMapping("/my_info")
	public String my_info() {
		return "/coin_my_info";
	}
	//??????????????????????????? ?????? ??????(??????????????? ????????????????????? ????????????????????? ??????????????????)
	@ResponseBody
	@RequestMapping("/my_info_session_check")
	public String myInfoSessionCheck(HttpServletRequest request, HttpSession session,
									@RequestParam String coin_user_email) {
		if(!coin_user_email.equals("null")) {
			coin_user_email = "not_empty";
		}
		return coin_user_email;
	}
	//1.?????????????????? ????????? > ?????????????????????...2.(?????????)????????????????????? ?????? pw??????????????? ??? 
	@ResponseBody
	@RequestMapping("/get_my_info")
	public HashMap<String, String> getMyInfo(@RequestParam String coin_user_email) {
		HashMap<String, String> map = new HashMap<String, String>();
		map = u_service.get_my_info(coin_user_email);
		return map;
	}
	//?????????????????? > ???????????? N ??? ?????????
	@ResponseBody
	@RequestMapping("/change_alarmN")
	public int alarmTestN(@RequestParam String coin_user_email, String coin_user_alarmYN) {
		int result = 0;
		System.out.println(coin_user_email);
		System.out.println(coin_user_alarmYN);
		if(coin_user_alarmYN.equals("on")) {
			coin_user_alarmYN = "N";
			System.out.println(coin_user_alarmYN);
		}
		u_service.change_user_alarmN(coin_user_email, coin_user_alarmYN);
		return result;
	}
	//?????????????????? > ???????????? Y ??? ?????????
	@ResponseBody
	@RequestMapping("/change_alarmY")
	public int alarmTestY(@RequestParam String coin_user_email, String coin_user_alarmYN) {
		int result = 0;
		System.out.println(coin_user_email);
		System.out.println(coin_user_alarmYN);
		if(coin_user_alarmYN.equals("on")) {
			coin_user_alarmYN = "Y";
			System.out.println(coin_user_alarmYN);
		}
		u_service.change_user_alarmY(coin_user_email, coin_user_alarmYN);
		return result;
	}
	//?????????????????? > ???????????????
	@ResponseBody
	@RequestMapping("/change_user_name")
	public int changeNameUser(@RequestParam String coin_user_email,String coin_user_name) {
		int result = 0;
		u_service.change_user_name(coin_user_email, coin_user_name);
		return result;
	}
	//?????????????????? > ?????????????????? ?????????
	@RequestMapping("/pw_change_page")
	public String pw_changePage() {
		return "/coin_pw_change_page";
	}
	//??????????????????????????? ????????????(??????????????? ???????????????????????? ??????????????????)
	@ResponseBody
	@RequestMapping("/pw_change_page_session_check")
	public String pwChange_sessionCheck(HttpServletRequest request, HttpSession session,
			@RequestParam String coin_user_email) {
		if(!coin_user_email.equals("null")) {
			coin_user_email = "not_empty";
		}
		return coin_user_email;
	}
	//?????????????????? > ?????????????????? > ????????????
	@ResponseBody
	@RequestMapping("/my_pw_change")
	public int mypwChange(HttpServletRequest request, HttpSession session,
						@RequestParam String coin_user_email, String coin_user_pw) {
		int result = 0;
		u_service.change_user_pw(coin_user_email, coin_user_pw);
		session = request.getSession();
		session.invalidate(); 
		return result;
	}
	//????????? > ?????????????????????
	@ResponseBody
	@RequestMapping("/admin_name_change")
	public int adminnameChange(@RequestParam String coin_user_email,String coin_user_name) {
		int result = 0;
		u_service.change_user_name(coin_user_email, coin_user_name);
		return result;
	}
	//????????? > ???????????????????????? ??????
	@ResponseBody
	@RequestMapping("/admin_pw_change")
	public int adminpwChange(@RequestParam String coin_user_email, String coin_user_pw) {
		int result = 0;
		System.out.println(coin_user_email);
		u_service.change_user_pw(coin_user_email, coin_user_pw);
		
		return result;
	}
	//???????????? ?????? ?????????
	@RequestMapping("/phone_change_page")
	public String phoneChangeP() {
		return "/coin_phone_change_page";
	}
	//???????????? ?????? ????????? ????????????(??????????????? ????????????????????????????????? ??????????????????)
	@ResponseBody
	@RequestMapping("/phone_change_page_session_check")
	public String phoneChangePSessionCheck(HttpServletRequest request, HttpSession session,
			@RequestParam String coin_user_email) {
		if(!coin_user_email.equals("null")) {
			coin_user_email = "not_empty";
		}
		return coin_user_email;
	}
	//?????????????????? > ???????????? ?????? > ????????????
	@ResponseBody
	@RequestMapping("/my_phone_change")
	public int myphoneChange(@RequestParam String coin_user_email, String coin_user_phone) {
		int result = 99;
		u_service.change_user_phone(coin_user_email, coin_user_phone);
		return result;
	}
	//?????????,???????????? ?????? ?????????
	@RequestMapping("/account")
	public String accountPage() {
		return "coin_find_account";
	}
	//???????????????(USER??????,USER??????????????? ??????????????? ??????)
	@ResponseBody
	@RequestMapping("/check_user_name_phone")
	public String check_userName_Phone(@RequestParam String coin_user_name, String coin_user_phone) {
		String result = "";
		int count = 0;
		//??????,????????? ????????? user_table?????? select -> result=1?????? send, result=0?????? ???????????? ??????,??????
		count = u_service.find_email(coin_user_name, coin_user_phone);
		if(count==1) {
			result="success";
		}else {
			result="fail";
		}
		return result;
	}
	//????????? ??????,????????? ???????????? ?????????????????? email?????? ????????????
	@ResponseBody
	@RequestMapping("/go_email_send")
	public int go_email_send(@RequestParam String coin_user_phone) {
		int result = 0;
		String coin_user_email = "";
		coin_user_email = u_service.find_email_from_phone(coin_user_phone);
		service.sendEmail(coin_user_phone, coin_user_email);
		return result;
	}
	//?????????????????? Email,Phone ???????????? phone????????? ?????????????????? ?????????
	@ResponseBody
	@RequestMapping("/check_email_phone")
	public int checkEmailAndPhone(@RequestParam String coin_user_email, String coin_user_phone) {
		int result = 0;
		result = u_service.find_pw_from_email_phone(coin_user_email, coin_user_phone);
		return result;
	}
	@ResponseBody
	@RequestMapping("/send_new_pw")
	public String send_new_pw(@RequestParam String coin_user_email, String coin_user_phone) {
		//1.?????????????????? ?????? String coin_user_pw ??? ??????
		String coin_user_pw = RandomStringUtils.randomAlphanumeric(10); //????????? ????????????(????????????)
		System.out.println(coin_user_pw);
		//2.????????????????????? user_pw ??? new_pw??? ?????????
		u_service.change_user_new_pw(coin_user_email, coin_user_phone, coin_user_pw);
		//3.coin_user_phone?????? ???????????? new_pw ????????? ?????????
		service.sendPW(coin_user_phone, coin_user_pw);
		return coin_user_pw;
	}
	//???????????????
	@RequestMapping("/intro")
	public String intro(Locale locale, HttpServletRequest request, Model model) {
		model.addAttribute("clientLocale", locale);
		model.addAttribute("sessionLocale", localeResolver.resolveLocale(request));
		model.addAttribute("siteCount", messageSource.getMessage("msg.first",null, locale));
		return "coin_intro";
	}
	//???????????????
	@RequestMapping("/mining_intro")
	public String mining_intro(Locale locale, HttpServletRequest request, Model model) {
		model.addAttribute("clientLocale", locale);
		model.addAttribute("sessionLocale", localeResolver.resolveLocale(request));
		model.addAttribute("siteCount", messageSource.getMessage("msg.first",null, locale));
		return "miningstation_intro";
	}
	//????????????
	@RequestMapping("/map")
	public String map() {
		return "coin_map";
	}
	//?????????-????????????
	@RequestMapping("/service")
	public String service() {
		return "service_mining";
	}
	//??????????????? ?????????
	@RequestMapping("/ex_data")
	public ModelAndView datalist() {
		ModelAndView mv = new ModelAndView("/ex_data_list");
		List<DataDto> list = service.dataSelect();
		mv.addObject("list", list);
		return mv;
	}
	// -------------------- NOTICE START --------------------------------- //
	//????????????-????????????(?????????) - KOR ?????? ??????
	@RequestMapping("/notice")
	public ModelAndView notice(PagingDto cri) {
		ModelAndView mv = new ModelAndView("/client_notice");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(b_service.noticeCountList());
		List<Map<String,Object>> list = b_service.board_notice_list(cri);
		mv.addObject("list",list);
		mv.addObject("pageMaker",pageMaker);
		return mv;
	}
	//????????????-????????????(?????????) - ENG ?????? ??????
	@RequestMapping("/notice_e")
	public ModelAndView notice_e(PagingDto cri) {
		ModelAndView mv = new ModelAndView("/client_notice2");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(b_service.noticeCountList_e());
		List<Map<String,Object>> list = b_service.board_notice_list_e(cri);
		mv.addObject("list",list);
		mv.addObject("pageMaker",pageMaker);
		return mv;
	}
	//???????????? ????????? ????????? KOR
	@RequestMapping("notice_write")
	public String writre_notice() {
		return "client_notice_writeform";
	}
	//???????????? ????????? ????????? ENG
	@RequestMapping("notice_write_e")
	public String write_notice_e() {
		return "client_notice_writeform2";
	}
	//???????????? ?????????(?????????) KOR
	@ResponseBody
	@RequestMapping("/notice_insert")
	public String noticewrite(@RequestParam String board_title,String board_content) {
		b_service.board_notice_insert(board_title, board_content);
		return "ok";
	}
	//???????????? ?????????(?????????) ENG
	@ResponseBody
	@RequestMapping("/notice_insert_e")
	public String noticewrite_e(@RequestParam String board_title, String board_content) {
		b_service.board_notice_insert_e(board_title, board_content);
		return "ok";
	}
	//???????????? ???????????? ????????? - KOR
	@RequestMapping("/notice_detail")
	public ModelAndView noticeDetail(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_notice_detail");
		Board_NoticeDto dto = b_service.notice_detail(board_seq);
		mv.addObject("dto",dto);
		return mv;
	}
	//???????????? ???????????? ????????? - ENG
	@RequestMapping("/notice_detail_e")
	public ModelAndView noticeDetail_e(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_notice_detail2");
		Board_NoticeDto dto = b_service.notice_detail_e(board_seq);
		mv.addObject("dto",dto);
		return mv;
	}
	//???????????? ?????? ????????? - KOR
	@RequestMapping("/client_notice_modifyform")
	public ModelAndView notice_modifyform(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_notice_modifyform");
		Board_NoticeDto dto = b_service.notice_detail(board_seq);
		mv.addObject("dto",dto);
		return mv;
	}
	//???????????? ?????? ????????? - ENG
	@RequestMapping("/client_notice_modifyform_e")
	public ModelAndView notice_modifyform_e(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_notice_modifyform2");
		Board_NoticeDto dto = b_service.notice_detail_e(board_seq);
		mv.addObject("dto",dto);
		return mv;
	}
	//???????????? ?????? ?????? - KOR
	@ResponseBody
	@RequestMapping("/notice_modify")
	public String noticeModify(@RequestParam int board_seq, String board_title, String board_content) {
		b_service.notice_modify(board_seq,board_title,board_content);
		return "ok";
	}
	//???????????? ?????? ?????? - ENG
	@ResponseBody
	@RequestMapping("/notice_modify_e")
	public String noticeModify_e(@RequestParam int board_seq, String board_title, String board_content) {
		b_service.notice_modify_e(board_seq,board_title,board_content);
		return "ok";
	}
	//???????????? ?????? - KOR
	@ResponseBody
	@RequestMapping("/notice_delete")
	public String noticecDelete(@RequestParam int board_seq) {
		b_service.notice_delete(board_seq);
		return "ok";
	}
	//???????????? ?????? - ENG
	@ResponseBody
	@RequestMapping("/notice_delete_e")
	public String noticeDelete_e(@RequestParam int board_seq) {
		b_service.notice_delete_e(board_seq);
		return "ok";
	}
	// -------------------- NOTICE END --------------------------------- //
	
	// -------------------- NEWS START --------------------------------- //
	//????????????-??????(?????????) - KOR
	@RequestMapping("/news")
	public ModelAndView news(PagingDto cri) {
		ModelAndView mv = new ModelAndView("/client_news");
		PageMaker pageMaker = new PageMaker(); 
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(b_service.newsCountList());
		List<Map<String,Object>> list = b_service.board_news_list(cri);
		mv.addObject("pageMaker", pageMaker);
		mv.addObject("list",list); 
		return mv;
	}
	//????????????-??????(?????????) - ENG
	@RequestMapping("/news_e")
	public ModelAndView news_e(PagingDto cri) {
		ModelAndView mv = new ModelAndView("/client_news2");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(b_service.newsCountList_e());
		List<Map<String,Object>> list = b_service.board_news_list_e(cri);
		mv.addObject("pageMaker", pageMaker);
		mv.addObject("list", list);
		return mv;
	}
	//?????? ????????? ????????? - KOR
	@RequestMapping("/news_write")
	public String writre_news() {
		return "client_news_writeform";
	}
	//?????? ????????? ????????? - ENG
	@RequestMapping("/news_write_e")
	public String write_news_e() {
		return "client_news_writeform2";
	}
	//?????? ?????????(?????????) -KOR
	@ResponseBody
	@RequestMapping("/news_insert")
	public String newswrite(@RequestParam String board_title,String board_content) {
		b_service.board_news_insert(board_title, board_content);
		return "ok";
	}
	//?????? ?????????(?????????) - ENG
	@ResponseBody
	@RequestMapping("/news_insert_e")
	public String newswrite_e(@RequestParam String board_title, String board_content) {
		b_service.board_news_insert_e(board_title, board_content);
		return "ok";
	}
	//?????? ???????????? ????????? - KOR
	@RequestMapping("/news_detail")
	public ModelAndView newsDetail(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_news_detail");
		Board_NewsDto dto = b_service.news_detail(board_seq);
		mv.addObject("dto",dto);
		return mv;
	}
	//?????? ???????????? ????????? - ENG
	@RequestMapping("/news_detail_e")
	public ModelAndView newsDetail_e(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_news_detail2");
		Board_NewsDto dto = b_service.news_detail_e(board_seq);
		mv.addObject("dto", dto);
		return mv;
	}
	//?????? ?????? ????????? - KOR
	@RequestMapping("/client_news_modifyform")
	public ModelAndView news_modifyform(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_news_modifyform");
		Board_NewsDto dto = b_service.news_detail(board_seq);
		mv.addObject("dto",dto);
		return mv;
	}
	//?????? ?????? ????????? - ENG
	@RequestMapping("/client_news_modifyform_e")
	public ModelAndView news_modifyform_e(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_news_modifyform2");
		Board_NewsDto dto = b_service.news_detail_e(board_seq);
		mv.addObject("dto", dto);
		return mv;
	}
	//?????? ?????? ?????? -KOR
	@ResponseBody
	@RequestMapping("/news_modify")
	public String newsModify(@RequestParam int board_seq, String board_title, String board_content) {
		b_service.news_modify(board_seq,board_title,board_content);
		return "ok";
	}
	//?????? ?????? ?????? - ENG
	@ResponseBody
	@RequestMapping("/news_modify_e")
	public String newsModify_e(@RequestParam int board_seq, String board_title, String board_content) {
		b_service.news_modify_e(board_seq, board_title, board_content);
		return "ok";
	}
	//?????? ?????? -KOR
	@ResponseBody
	@RequestMapping("/news_delete")
	public String newsDelete(@RequestParam int board_seq) {
		b_service.news_delete(board_seq);
		return "ok";
	}
	//?????? ?????? - ENG
	@ResponseBody
	@RequestMapping("/news_delete_e")
	public String newsDelete_e(@RequestParam int board_seq) {
		b_service.news_delete_e(board_seq);
		return "ok";
	}
	// -------------------- NEWS END--------------------------------- //
	
	// -------------------- FAQ START--------------------------------- //
	//????????????-?????????????????? FAQ(?????????) KOR, ENG
	@RequestMapping("/faq")
	public ModelAndView faq(PagingDto cri) {
		ModelAndView mv = new ModelAndView("/client_faq");
		PageMaker pageMaker = new PageMaker(); 
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(b_service.faqCountList());
		List<Map<String,Object>> list = b_service.board_faq_list(cri);
		mv.addObject("pageMaker", pageMaker);
		mv.addObject("list",list);
		return mv;
	} 
	@RequestMapping("/faq_e")
	public ModelAndView faq_e(PagingDto cri) {
		ModelAndView mv = new ModelAndView("/client_faq2");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(b_service.faqCountList_e());
		List<Map<String,Object>> list = b_service.board_faq_list_e(cri);
		mv.addObject("pageMaker",pageMaker);
		mv.addObject("list", list);
		return mv;
	}
	//?????????????????? FAQ ????????? ????????? KOR, ENG
	@RequestMapping("/faq_write")
	public String write_fqa() {
		return "client_faq_writeform";
	}
	@RequestMapping("/faq_write_e")
	public String write_faq_e() {
		return "client_faq_writeform2";
	}
	//?????????????????? FAQ ?????????(?????????) KOR, ENG
	@ResponseBody
	@RequestMapping("/faq_insert")
	public String faqwrite(@RequestParam String board_title, String board_content) {
		b_service.board_faq_insert(board_title, board_content);
		return "ok";
	}
	@ResponseBody
	@RequestMapping("/faq_insert_e")
	public String faqwrite_e(@RequestParam String board_title, String board_content) {
		b_service.board_faq_insert_e(board_title, board_content);
		return "ok";
	}
	//?????????????????? FAQ ???????????? ????????? KOR, ENG
	@RequestMapping("/faq_detail")
	public ModelAndView faqDetail(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_faq_detail");
		Board_FaqDto dto = b_service.faq_detail(board_seq);
		mv.addObject("dto", dto);
		return mv;
	}
	@RequestMapping("/faq_detail_e")
	public ModelAndView faqDetail_e(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_faq_detail2");
		Board_FaqDto dto = b_service.faq_detail_e(board_seq);
		mv.addObject("dto",dto);
		return mv;
	}
	//?????????????????? FAQ ?????? ????????? KOR, ENG
	@RequestMapping("/client_faq_modifyform")
	public ModelAndView faq_modifyform(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("client_faq_modifyform");
		Board_FaqDto dto = b_service.faq_detail(board_seq);
		mv.addObject("dto",dto);
		return mv;
	}
	@RequestMapping("/client_faq_modifyform_e")
	public ModelAndView faq_modifyform_e(@RequestParam int board_seq) {
		ModelAndView mv = new ModelAndView("/client_faq_modifyform2");
		Board_FaqDto dto = b_service.faq_detail_e(board_seq);
		mv.addObject("dto", dto);
		return mv;
	}
	//?????????????????? FAQ ?????? ?????? KOR, ENG
	@ResponseBody
	@RequestMapping("/faq_modify")
	public String faqModify(@RequestParam int board_seq, String board_title, String board_content) {
		b_service.faq_modify(board_seq, board_title, board_content);
		return "ok";
	}
	@ResponseBody
	@RequestMapping("/faq_modify_e")
	public String faqModify_e(@RequestParam int board_seq, String board_title, String board_content) {
		b_service.faq_modify_e(board_seq, board_title, board_content);
		return "ok";
	}
	//?????????????????? FAQ ?????? KOR, ENG
	@ResponseBody 
	@RequestMapping("/faq_delete")
	public String faqDelete(@RequestParam int board_seq) {
		b_service.faq_delete(board_seq);
		return "ok";
	}
	@ResponseBody
	@RequestMapping("/faq_delete_e")
	public String faqDelete_e(@RequestParam int board_seq) {
		b_service.faq_delete_e(board_seq);
		return "ok";
	}
	// -------------------- FAQ END--------------------------------- //
	
	//?????????(ADMIN) ??????
	@ResponseBody
	@RequestMapping("/admin_check")
	public String admin_check(HttpServletRequest request, HttpSession session,
			@RequestParam String check_admin) {
		//System.out.println(check_admin);
		return check_admin;
	}
	
	//?????????(ADMIN) ?????????
	@RequestMapping("/admin_manage")
	public String adminManagePage() {
		return "coin_admin";
	}
	
	//?????????(ADMIN)-???????????? ?????? ?????????(List)
	@RequestMapping("/admin_user_info")
	public ModelAndView adminPage(PagingDto cri) {
		ModelAndView mv = new ModelAndView("/admin_user_info");
		PageMaker pageMaker = new PageMaker(); 
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(u_service.userCountList());
		List<Map<String,Object>> list = u_service.user_all_list(cri);
		mv.addObject("pageMaker", pageMaker);
		mv.addObject("list",list);
		return mv;

	}
	//?????????(ADMIN)-???????????? ???????????? ?????????
	@RequestMapping("/user_info_detail")
	public ModelAndView adminUserInfoDetail(@RequestParam int coin_user_seq) {
		ModelAndView mv = new ModelAndView("/admin_user_info_detail");
		CoinUserDto dto = u_service.admin_user_info_detail(coin_user_seq);
		mv.addObject("dto", dto);
		return mv;
	}
	
	//????????????????????????
	@RequestMapping("/private")
	public String private_info() {
		return "coin_private";
	}
	//????????????
	@RequestMapping("/site_map")
	public String sitemap() {
		return "coin_sitemap";
	}
	//????????????
	@RequestMapping("/modal")
	public String modalEx() {
		return "index";
	}
	//404_ERROR
	@RequestMapping("/page_error")
	public String errorPage() {
		return "404";
	}
	

}
