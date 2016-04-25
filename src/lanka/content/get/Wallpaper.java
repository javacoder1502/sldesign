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
public class Wallpaper extends Content{
    

    
    @Override
    public List<ContentDes> getContentPriceWise(String price, int limit) {
         String sql  = "select code,prv,pricetag from Wallpaper where pricetag like '"+price+"' order by rand() limit "+limit+"";
         List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
         contentDes_ls =  getContentDes(sql,limit);
 	    return contentDes_ls;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public  List<ContentDes> getContentCatWise(String cat, int limit) {
         String sql  = "select code,prv,pricetag from Wallpaper where cat like '"+cat+"'  order by rand() limit "+limit+"";
         List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
         contentDes_ls =  getContentDes(sql,limit);
 	    return contentDes_ls;
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public  List<ContentDes> getRandomContent(int limit) {
          String sql  = "select code,prv,pricetag from Wallpaper where cat not like 'Holy Deities'  order by rand() limit "+limit+"";
          List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
          contentDes_ls =  getContentDes(sql,limit);
  	    return contentDes_ls;
     }

  /*  @Override
    ResultSet getDistinctCat() {
       String sql  = "select distinct(cat) from Wallpaper order by rand()";
        ResultSet rs  = db.selectData(sql);
        return rs;
    }*/
    
}
