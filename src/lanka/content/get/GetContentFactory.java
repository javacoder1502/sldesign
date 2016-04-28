/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content.get;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author Kunal
 */
@Component
public class GetContentFactory {
	
	@Autowired
	public Wallpaper wallpaper;
	@Autowired
	public Animation animation;
	@Autowired
	public Game game;
	@Autowired
	public Ringtone ringtone;
	@Autowired
	public Video video;
	
	
	




	//use getContent method to get object of type Content   
    public Content getContent(String contentType) {
    	
        contentType = contentType.toLowerCase();

        if (contentType.equalsIgnoreCase("wallpaper")) {
          
            return getWallpaper();
        } else if (contentType.equalsIgnoreCase("animation")) {
           
            return getAnimation();
        } else if (contentType.equalsIgnoreCase("ringtone")) {
           
            return  getRingtone();
        } else if (contentType.equalsIgnoreCase("video")) {
            
            return  getVideo();
        } 
        else if (contentType.equalsIgnoreCase("game")) {
            
            return  getGame();
        }
        else {
            System.out.println(" unknow request  in GetContentFactory class");
        }

//        switch (contentType) {
//            case "wallpaper":
//                System.out.println(" returning wallpaper class object");
//                return new Wallpaper();
//            case "animation":
//                 System.out.println(" returning animation class object");
//                return new Animation();
//            case "game":
//                 System.out.println(" returning game class object");
//                return new Game();
//            case "ringtone":
//                 System.out.println(" returning ringtone class object");
//                return new Ringtone();
//            case "video":
//                 System.out.println(" returning video class object");
//                return new Video();
//
//            default:
//                System.out.println(" unknow request  in GetContentFactory class");
//        }
        return null;
    }
    
    
    
    


    public Wallpaper getWallpaper() {
		return wallpaper;
	}




	public Animation getAnimation() {
		return animation;
	}




	public Game getGame() {
		return game;
	}




	public Ringtone getRingtone() {
		return ringtone;
	}




	public Video getVideo() {
		return video;
	}
}//end of GetContentFactory class.
