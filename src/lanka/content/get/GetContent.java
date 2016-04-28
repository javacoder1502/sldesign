/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content.get;


import java.util.ArrayList;
import java.util.List;

import lanka.content.dao.HibernateOperations;
import lanka.content.domain.ContentCatDesc;
import lanka.content.domain.ContentDes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Kunal
 */
@Component
public class GetContent {

	@Autowired
    GetContentFactory contentFactory;
	@Autowired
	HibernateOperations ho;
	

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
     
     
     public List<String> getDistinctCat(String content_type) {
    	 List<String> ls_s  = new ArrayList<String>();
       
        Content con = contentFactory.getContent(content_type);
        ls_s = con.getDistinctCat();
        for (String string : ls_s) {
			System.out.println("distinct cat "+string);
		}
        return ls_s;

    }
    
   
    @Transactional
 	public List<ContentCatDesc> getContentCatDesc(String content_type) {
 		String sql ="select cat_name,cat_desc,prv from ContentCatDesc where content like '"+content_type+"'";
 		//passing 1000 limit so that we can get distinct_cat data from database 
 		List<Object[]> ls = ho.getResultListByLimit(sql, 1000);
 		List<ContentCatDesc> ls_co =  new ArrayList<ContentCatDesc>();
 		for (Object[] objects : ls) {
 			ContentCatDesc contentCatDesc = new ContentCatDesc();
 			contentCatDesc.setCat_name((String)objects[0]);
 			contentCatDesc.setCat_desc((String)objects[1]);
 			contentCatDesc.setImage_prv_name((String)objects[2]);
 			ls_co.add(contentCatDesc);
 		 }
 		return ls_co;
 	}

}
