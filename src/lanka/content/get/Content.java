/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content.get;

import java.util.ArrayList;
import java.util.List;

import lanka.content.domain.ContentDes;
import lanka.content.utility.HibernateOperations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Kunal
 */
public abstract  class Content {
	
	@Autowired
	HibernateOperations ho;
	
	@Transactional
	public List<ContentDes> getContentDes(String sql,int limit){
		
		//do it with autowired
	
		
		List<Object[]> ls  = new ArrayList<Object[]>();
		List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
		
		System.out.println("--before invoking method---");
		ho.just_print();
		
		ls = ho.getResultListByLimit(sql,limit);
		
		
		 for(Object[] obj: ls){
		       ContentDes contentDes = new ContentDes();
		         contentDes.setCode((String)obj[0]);
		         contentDes.setContent_prv((String)obj[1]);
		         contentDes.setPricetag((String)obj[2]);
		         contentDes_ls.add(contentDes);
	      }
		 return contentDes_ls;
		
	}
	
  public  abstract List<ContentDes> getContentPriceWise(String price,int limit);
  public abstract List<ContentDes> getContentCatWise(String cat,int limit);
  public abstract List<ContentDes> getRandomContent(int limit);
    //abstract List<ContentDes> getDistinctCat();
    
}
