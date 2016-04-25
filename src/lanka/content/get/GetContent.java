/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lanka.content.get;

import java.sql.ResultSet;

/**
 *
 * @author Kunal
 */
public class GetContent {

    GetContentFactory contentFactory = new GetContentFactory();

    //cal this method to get content according to the cat 
    public ResultSet getContentCatWise(String content_type, String cat,String limit) {
//        String  = "9";
        Content con = contentFactory.getContent(content_type);
        ResultSet rs = con.getContentCatWise(cat, limit);
        return rs;
       }

    //cal this method to get content according to the price 
    public ResultSet getContentPriceWise(String content_type, String price,String limit) {
       
        Content con = contentFactory.getContent(content_type);
        ResultSet rs = con.getContentPriceWise(price, limit);
        return rs;

    }
    
     public ResultSet getRandomContent(String content_type, String limit) {
       Content con = contentFactory.getContent(content_type);
        ResultSet rs = con.getRandomContent(limit);
        return rs;
    }
     
     
     public ResultSet getDistinctCat(String cat_type,String content_type) {
       
        Content con = contentFactory.getContent(content_type);
        ResultSet rs = con.getDistinctCat();
        return rs;

    }
    
//    public static void main(String[] args) {
//        GetContent gc =  new GetContent();
//        gc.getContentCatWise("animation","aarti_chhabria");
//      }

}
