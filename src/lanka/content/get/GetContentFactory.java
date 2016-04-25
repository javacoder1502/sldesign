/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content.get;

/**
 *
 * @author Kunal
 */
public class GetContentFactory {

    //use getContent method to get object of type Content   
    public Content getContent(String contentType) {
        contentType = contentType.toLowerCase();

        if (contentType.equalsIgnoreCase("wallpaper")) {
            System.out.println(" returning wallpaper class object");
            return new Wallpaper();
        } else if (contentType.equalsIgnoreCase("animation")) {
            System.out.println(" returning animation class object");
            return new Animation();
        } else if (contentType.equalsIgnoreCase("ringtone")) {
            System.out.println(" returning animation class object");
            return new Ringtone();
        } else if (contentType.equalsIgnoreCase("video")) {
            System.out.println(" returning animation class object");
            return new Video();
        } 
        else if (contentType.equalsIgnoreCase("game")) {
            System.out.println(" returning animation class object");
            return new Game();
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
}//end of GetContentFactory class.
