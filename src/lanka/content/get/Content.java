/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content.get;

import java.util.ArrayList;
import java.util.List;

import lanka.content.dao.HibernateOperations;
import lanka.content.domain.ContentDes;

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
		List<Object[]> ls  = new ArrayList<Object[]>();
		List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
		ls = ho.getResultListByLimit(sql,limit);
		for(Object[] obj: ls){
		       ContentDes contentDes = new ContentDes();
		       Integer in =(Integer)obj[0];
		       
		         contentDes.setCode(in.toString());
		         contentDes.setContent_prv((String)obj[1]);
		         contentDes.setPricetag((String)obj[2]);
		         contentDes_ls.add(contentDes);
	      }
		 return contentDes_ls;
		
	}
	
	public List<String> getCat(String sql){
		   List<Object> ls  = new ArrayList<Object>();
			List<String> ls_s  = new ArrayList<String>();
			ho.just_print();
			ls = ho.getListForSingleColumn(sql);
			for(Object obj: ls){
				 ls_s.add((String)obj);
				 
		      }
			 return ls_s;
	}
	
	
	
	
  public  abstract List<ContentDes> getContentPriceWise(String price,int limit);
  public abstract List<ContentDes> getContentCatWise(String cat,int limit);
  public abstract List<ContentDes> getRandomContent(int limit);
  abstract List<String> getDistinctCat();
    
}
