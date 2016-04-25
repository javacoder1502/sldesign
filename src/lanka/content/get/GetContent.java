/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content.get;


import java.util.ArrayList;
import java.util.List;

import lanka.content.domain.ContentDes;

/**
 *
 * @author Kunal
 */
public class GetContent {

    GetContentFactory contentFactory = new GetContentFactory();

    //cal this method to get content according to the cat 
    public  List<ContentDes> getContentCatWise(String content_type, String cat,int limit) {
       
    	List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
        Content con = contentFactory.getContent(content_type);
        contentDes_ls = con.getContentCatWise(cat, limit);
        return contentDes_ls;
       }

    //cal this method to get content according to the price 
    public List<ContentDes> getContentPriceWise(String content_type, String price,int limit) {
    	List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
    	
        Content con = contentFactory.getContent(content_type);
        contentDes_ls = con.getRandomContent(limit);
        return contentDes_ls;

    }
    
     public List<ContentDes> getRandomContent(String content_type, int limit) {
    	 List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
    	Content con = contentFactory.getContent(content_type);
       contentDes_ls = con.getRandomContent(limit);
       for (ContentDes contentDes : contentDes_ls) {
    	   System.out.println("prv----"+contentDes.getContent_prv());
		
	}
       
        return contentDes_ls;
    }
     
     
     /*public List<ContentDes> getDistinctCat(String cat_type,String content_type) {
    	 List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
       
        Content con = contentFactory.getContent(content_type);
        contentDes_ls = con.getDistinctCat();
        return contentDes_ls;

    }*/
    
//    public static void main(String[] args) {
//        GetContent gc =  new GetContent();
//        gc.getContentCatWise("animation","aarti_chhabria");
//      }

}
