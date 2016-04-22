package lanka.content.controller;

import java.util.Locale;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContentController {

	@RequestMapping("/index")
	public ModelAndView sriWap(){
		
		Locale locale2 = LocaleContextHolder.getLocale();
		String str = locale2.getDisplayLanguage();
		System.out.println("Local_language is "+str);
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("sriWap");
		return modelAndView;
	}
	
	@RequestMapping("/contentCat")
	public ModelAndView content_cat_desc(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("content_cat_desc");
		return modelAndView;
	}
	@RequestMapping("/content")
	public ModelAndView content(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("content");
		return modelAndView;
	}
	
}
