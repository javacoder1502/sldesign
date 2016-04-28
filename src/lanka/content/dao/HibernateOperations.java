package lanka.content.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;


/*@Repository*/
public class HibernateOperations {
	private SessionFactory sessionFactory;
	
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	//pass the sql query to get result for multiple column	
	public List<Object[]> getResultListByLimit(String query,int limit){
		
		System.out.println("in get result-------");
		
		 Session session = this.sessionFactory.openSession();
		
		   /* Session session = this.sessionFactory.getCurrentSession();*/
			List<Object[]> ls_ob = new ArrayList<Object[]>();
			Query q = session.createQuery(query);
	         q.setMaxResults(limit);
			ls_ob  = (List<Object[]>)q.list();
			session.close();
			return ls_ob;

}
			
			
 public List<Object> getListForSingleColumn(String query){
	 List<Object> ls_ob = new ArrayList<Object>();
	 
		
	
	 Session session = this.sessionFactory.openSession();
		/*Session session = this.sessionFactory.getCurrentSession();*/
	     System.out.println("step--1 in getListForSingleColumn");
		    Query q = session.createQuery(query);
		    System.out.println("step--2 in getListForSingleColumn");
	        ls_ob  = q.list();
	        session.close();
	        System.out.println("step--3 in getListForSingleColumn");
	 
	
	
	 System.out.println("returning in getListForSingleColumn");
			return ls_ob;
		}

	public void SaveObject(Object obj){
		
		Session session = this.sessionFactory.getCurrentSession();
	    List<Object[]> ls_ob = new ArrayList<Object[]>();
		session.save(obj);
	  }


	public void just_print(){
		System.out.println("---------in method hibenate operation------");
	}
	/*public void update(String query){
		session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		
		try {
			tx = session.beginTransaction();
		
		SQLQuery sqlQuery = session.createSQLQuery(query);
		sqlQuery.executeUpdate();
		
		Query query_s = session.createQuery(query);
	        query_s.executeUpdate();
	    tx.commit();
		//tx.commit();
		}catch (HibernateException ex) {
			if (tx != null) {
				System.out.println("Exception in getList method " + ex);
				
				  tx.rollback(); 
				  ex.printStackTrace();
				 
			}
			System.out.println("Exception getList tx open" + ex);
		} finally {
			//session.close();
		}
		
	}*/



	/*public void insert(String query){
		session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		//get Connction from Session
		
		session.doWork(new Work() {
			
			@Override
			public void execute(Connection connection) throws SQLException {
				 PreparedStatement ps = connection
			                .prepareStatement(query);
			      
			            ps.executeUpdate();
			       
				
			}
		});
		
		tx.commit();
		//session.close();

		
	}*/


	}
