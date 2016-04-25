package lanka.content.domain;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
/*
 * LanguageDropDown is a domain class for using to display different languages on wap- site
 * 
 */
@Component
public class LanguageDropDown {

	List<String> lang_list = new ArrayList<String>();

	LanguageDropDown() {
		lang_list.add("English");
		lang_list.add("Sinhala");
		lang_list.add("Tamil");
	}

	public List<String> getLang_list() {
		
		return lang_list;
	}
	
}
