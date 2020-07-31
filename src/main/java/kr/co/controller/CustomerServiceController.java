package kr.co.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.PageTO;
import kr.co.domain.QnaDTO;
import kr.co.service.CustomerService;


@Controller
@RequestMapping("customerservice")


public class CustomerServiceController {
	
	@Inject
	private CustomerService cService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void main() {
		
	}
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public void notice() {
		
	}
	@RequestMapping(value = "/inquiry", method = RequestMethod.GET)
	public void inquiry() {
		
	}
	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public void event() {
		
	}
	@RequestMapping(value = "/winner", method = RequestMethod.GET)
	public void winner() {
		
	}
	////////////////////////////faq//////////////////////////////////////////////
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public void faq() {
		
	}
	
	
	////////////////////////////////////qna//////////////////////////////////////////
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public void qna() {
		
	}
	
	@RequestMapping(value = "/qnasearchlist")
	public String searchlist(Model model, String searchType,String keyword) {
		
		
		List<QnaDTO> list =cService.searchlist(searchType,keyword);
		model.addAttribute("list",list);
		model.addAttribute("searchType",searchType);
		model.addAttribute("keyword",keyword);

		return "customerservice/searchlist";
	}
	
	@RequestMapping(value = "/qnainsert", method = RequestMethod.GET)
	public void insert() {
		
	}
	@RequestMapping(value = "/qnainsert", method = RequestMethod.POST)
	public String insert(QnaDTO qdto) {
		cService.insert(qdto);
		return "redirect:/customerservice/list";
	}
	@RequestMapping(value = "/qnalist", method = RequestMethod.GET)
	public void list(Model model, String curPage) {
		int page = -1;
		if(curPage==null) {
			page=1;
		} else {
			page = Integer.parseInt(curPage);
		}
		PageTO<QnaDTO> to = new PageTO<QnaDTO>(page);
		to = cService.list(to);
		model.addAttribute("to",to);
		model.addAttribute("list",to.getList());
	}
	@RequestMapping(value = "/qnaread/{qnaNo}", method = RequestMethod.GET)
	public String read(Model model,@PathVariable("qnaNo")int qnaNo) {
		QnaDTO qdto = cService.read(qnaNo);
		model.addAttribute("qdto", qdto);
		return "customerservice/read";
	}
	
	@RequestMapping(value = "/qnaupdate", method = RequestMethod.POST)
	public String update(QnaDTO qdto) {
		
		cService.update(qdto);
		return "redirect:/customerservice/read" + qdto.getQnaNo();
	}
	
	@RequestMapping(value = "/qnaupdate/{qnaNo}", method = RequestMethod.GET)
	public String update(Model model,@PathVariable("qnaNo") int qnaNo) {
		
		QnaDTO qdto = cService.updateUI(qnaNo);
		model.addAttribute("qdto", qdto);
		
		return "customerservice/update";
	}
	
	@RequestMapping(value = "/qnadelete/{qnaNo}", method = RequestMethod.GET)
	public String delete(@PathVariable("qnaNo") int qnaNo) {
		cService.delete(qnaNo);
		return "redirect:/customerservice/list";
	}
}

