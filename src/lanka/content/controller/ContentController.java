package lanka.content.controller;



import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import lanka.content.domain.ContentDes;
import lanka.content.domain.LanguageDropDown;
import lanka.content.get.Content;
import lanka.content.get.GetContent;
import lanka.content.get.Wallpaper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContentController {


	@Autowired
	LanguageDropDown languageDropDown;
	
	/*
	 * Adding the common variable  "language_common_param" to the model
	 * to display the selected language to the user
	 * and adding the languageDropDown to the model to displaying all languages
	 * See headers/header.jsp for displaying selected language
	 */
	@ModelAttribute
	public void addCommonLanguageVariable(Model model){
		
       Locale locale =    LocaleContextHolder.getLocale();
	   String lang_name = locale.getDisplayLanguage();
		
		if(lang_name.equalsIgnoreCase("english")){
			lang_name = "English";
		}
		if(lang_name.equalsIgnoreCase("Sinhalese")){
			lang_name = "Sinhala";
		}
		if(lang_name.equalsIgnoreCase("Tamil")){
			lang_name = "Tamil";
		}
	    model.addAttribute("Lang_DropDown", languageDropDown.getLang_list());
		model.addAttribute("lang_select_param", lang_name);
}
	
	@RequestMapping("/index")
	public ModelAndView sriWap(){
		Locale locale2 = LocaleContextHolder.getLocale();
		String str = locale2.getDisplayLanguage();
		System.out.println("Local_language is "+str);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("sriWap");
		  GetContent gc = new GetContent();
		  
		
		  List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
		  contentDes_ls  = gc.getRandomContent("wallpaper", 3);
		
		
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
