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
public class Animation extends Content{
	
	

    public Animation() {
        //db = MaharajaDb.create();
    }
    
    
    @Override
    public  List<ContentDes> getContentPriceWise(String price, int limit) {
        String sql  = "select code,prv,pricetag from Scrsaver where pricetag like '"+price+"' order by rand() limit "+limit+"";
        List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
        contentDes_ls =  getContentDes(sql,limit);
	    return contentDes_ls;
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<ContentDes> getContentCatWise(String cat,int limit){
         String sql  = "select code,prv,pricetag from Scrsaver where cat like '"+cat+"' order by rand() limit "+limit+"";
         List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
         contentDes_ls =  getContentDes(sql,limit);
 	    return contentDes_ls;
       // throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public  void showmsg(){
        System.out.println(" in animation");
    }

    @Override
    public  List<ContentDes> getRandomContent(int limit) {
        String sql  = "select code,prv,pricetag from Scrsaver where cat not like 'Holy Deities'  order by rand() limit "+limit+"";
        List<ContentDes> contentDes_ls  = new ArrayList<ContentDes>();
        contentDes_ls =  getContentDes(sql,limit);
	    return contentDes_ls;
     }

   /* @Override
    List<ContentDes> getDistinctCat() {
       String sql  = "select distinct(cat) from Scrsaver  order by rand()";
        ResultSet rs  = db.selectData(sql);
        return rs;
    }*/
}