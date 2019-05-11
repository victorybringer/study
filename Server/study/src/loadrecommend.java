

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class loadcontractinfo
 */
@WebServlet("/loadrecommend")
public class loadrecommend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loadrecommend() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
		
		
		
		
		
		
		
		
			
			 String url = "jdbc:mysql://122.152.208.16:3306/wechat?serverTimezone=Hongkong&useUnicode=true&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true";
			  

		    	
				try {
					
					
					
				Connection conn	 = (Connection) DriverManager.getConnection(url,    "root","123456");
				Class.forName("com.mysql.jdbc.Driver");
				 String sql=null;
						 
				 ArrayList <String>video= new ArrayList<String>();
					if(request.getParameter("type").equals("video")) {	 
						sql="select count(good) as count  ,videoname from videofunction   where videoname in (select name from video where major='"+request.getParameter("major")+"' and grade='"+request.getParameter("grade")+"')  group by videoname  order by count desc";
						 
						 Statement stmt= (Statement) conn.createStatement();
					        ResultSet rs=stmt.executeQuery(sql);
					        response.setCharacterEncoding("utf-8"); 
						   PrintWriter out = response.getWriter();  
						int n=1;
						
						while(rs.next()&&n<=3) {
							
							video.add(rs.getString("videoname"));
							++n;
						}
					
						
						for(int i=0;i<video.size();++i) {
						sql="select * from video  where name='"+video.get(i)+"'"; 
						 
					     stmt= (Statement) conn.createStatement();
					        rs=stmt.executeQuery(sql);
					
					    	if(rs.next()) {
							
					    		out.println(rs.getString("picture")+"  "+rs.getString("name")+"  "+rs.getString("video"));
							}
						
					        
					        
					
						}
					
					
					}
					else {
						 ArrayList <String>book= new ArrayList<String>();
						sql="select count(good) as count  ,bookname from bookfunction   where bookname in (select name from book where major='"+request.getParameter("major")+"' and grade='"+request.getParameter("grade")+"')  group by bookname  order by count desc";
						 
						 Statement stmt= (Statement) conn.createStatement();
					        ResultSet rs=stmt.executeQuery(sql);
					        response.setCharacterEncoding("utf-8"); 
						   PrintWriter out = response.getWriter();  
						int n=1;
						
						while(rs.next()&&n<=3) {
							
							book.add(rs.getString("bookname"));
							++n;
						}
					
						
						for(int i=0;i<book.size();++i) {
						sql="select * from book  where name='"+book.get(i)+"'"; 
						 
					     stmt= (Statement) conn.createStatement();
					        rs=stmt.executeQuery(sql);
					
					    	if(rs.next()) {
							
					    		out.println(rs.getString("picture")+"  "+rs.getString("name")+"  "+rs.getString("book"));
							}
						
					        
					        
					
						}
						
						
						
						
						
					}
			       
				
			

				   
				   
		
			
					
				
				
				
				
				
				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		
			
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
