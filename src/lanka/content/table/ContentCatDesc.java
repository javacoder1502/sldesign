package lanka.content.table;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="content_cat_desc")
public class ContentCatDesc {
	
	@Id
	@GeneratedValue(strategy =GenerationType.AUTO)
	private
	int sno;
String cat_name;
String cat_desc;
String content;
private String prv;


public String getCat_name() {
	return cat_name;
}
public void setCat_name(String cat_name) {
	this.cat_name = cat_name;
}
public String getCat_desc() {
	return cat_desc;
}
public void setCat_desc(String cat_desc) {
	this.cat_desc = cat_desc;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
/**
 * @return the prv
 */
public String getPrv() {
	return prv;
}
/**
 * @param prv the prv to set
 */
public void setPrv(String prv) {
	this.prv = prv;
}
/**
 * @return the sno
 */
public int getSno() {
	return sno;
}
/**
 * @param sno the sno to set
 */
public void setSno(int sno) {
	this.sno = sno;
}


}
