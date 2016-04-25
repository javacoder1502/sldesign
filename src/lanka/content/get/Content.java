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
abstract  class Content {
    abstract ResultSet getContentPriceWise(String price,String limit);
    abstract ResultSet getContentCatWise(String cat,String limit);
    abstract ResultSet getRandomContent(String limit);
    abstract ResultSet getDistinctCat();
    
}
