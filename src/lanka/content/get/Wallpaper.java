/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content.get;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lanka.content.domain.ContentDes;


/**
 *
 * @author Kunal
 */
@Component
@Scope(BeanDefinition.SCOPE_PROTOTYPE)
public class Wallpaper extends Content{
    
    @Override
    public List<ContentDes> getContentPriceWise(String price, int limit) {
         String sql  = "select code,prv,pricetag from Wallpaper where pricetag like '"+price+"' order by rand() ";
         List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
         contentDes_ls =  getContentDes(sql,limit);
 	    return contentDes_ls;
        
    }

    @Override
    public  List<ContentDes> getContentCatWise(String cat, int limit) {
         String sql  = "select code,prv,pricetag from Wallpaper where cat like '"+cat+"'  order by rand() ";
         List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
         contentDes_ls =  getContentDes(sql,limit);
 	    return contentDes_ls;
     
    }
    
    @Override
    public  List<ContentDes> getRandomContent(int limit) {
          String sql  = "select code,prv,pricetag from Wallpaper where cat not like 'Holy Deities'  order by rand()";
          List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
          contentDes_ls =  getContentDes(sql,limit);
  	    return contentDes_ls;
     }

    @Override
    List<String> getDistinctCat() {
       String sql  = "select distinct(cat) from Wallpaper";
       List<String> ls_s  = new ArrayList<String>();
       ls_s = getCat(sql);
       return ls_s;
    }
    
}
