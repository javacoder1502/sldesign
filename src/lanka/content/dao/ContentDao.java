package lanka.content.dao;

import java.util.List;

import lanka.content.domain.ContentDes;



public abstract class ContentDao {
private String tbl_name="";
	

       public String getTbl_name() {
    	return tbl_name;
	}
    
	public void setTbl_name(String content_type) {
		if(content_type.equalsIgnoreCase("wallpaper")){
    		tbl_name="Wallpaper";
    	}
    	if(content_type.equalsIgnoreCase("game")){
    		tbl_name="Game";
    	}
    	if(content_type.equalsIgnoreCase("animation")){
    		tbl_name="Scrsaver";
    	}
    	if(content_type.equalsIgnoreCase("video")){
    		tbl_name="Video";
    	}
		this.tbl_name = tbl_name;
	}
	

}
