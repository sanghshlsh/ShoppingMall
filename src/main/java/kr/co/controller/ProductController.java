package kr.co.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ProductController {




	@RequestMapping(value="/admin/product/list", method = RequestMethod.GET)
	public void adminProduct() {		
	}

	@RequestMapping(value="/admin/default/index", method = RequestMethod.GET)
	public void adminIndex() {
		//필요x
	}
	@RequestMapping(value="/admin/default/blank", method = RequestMethod.GET)
	public void adminBlank() {
		//필요x
	}
	@RequestMapping(value="/admin/default/buttons", method = RequestMethod.GET)
	public void adminButtons() {
		//필요x
	}
	@RequestMapping(value="/admin/default/cards", method = RequestMethod.GET)
	public void adminCards() {
		//필요x
	}
	@RequestMapping(value="/admin/default/tables", method = RequestMethod.GET)
	public void adminTables() {
		//필요x
	}
	@RequestMapping(value="/admin/default/charts", method = RequestMethod.GET)
	public void adminCharts() {
		//필요x

	}
	@RequestMapping(value="/admin/default/animation", method = RequestMethod.GET)
	public void adminAniamtion() {
		//필요x
	}
	@RequestMapping(value="/admin/default/boarder", method = RequestMethod.GET)
	public void adminBoarder() {
		//필요x
	}
	@RequestMapping(value="/admin/default/color", method = RequestMethod.GET)
	public void adminColor() {
		//필요x
	}
	@RequestMapping(value="/admin/default/other", method = RequestMethod.GET)
	public void adminOther() {
		//필요x
	}

}