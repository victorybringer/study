

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
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class register
 */
@WebServlet("/comment")
public class comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public comment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String url = "jdbc:mysql://122.152.208.16:3306/wechat?serverTimezone=Hongkong&useUnicode=true&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true";
		   PrintWriter out = response.getWriter();  
				try {					
					
					
				Connection conn	 = (Connection) DriverManager.getConnection(url,    "root","123456");
				Class.forName("com.mysql.jdbc.Driver");
				
				
			      if(request.getParameter("type").equals("video")) {
			    		
						
			    	  
			    	
			    	 
			    	
			    	  String sql=null;
			    		  
			    	  
			    	  
			      
			    
			    		  
 
			    	

			    		  
			    			 sql="INSERT INTO `videocomment` (openid,content,videoname) VALUES (?,?,?)";
			    			 PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			    		  
			    			  ptmt.setString(1, request.getParameter("openid"));
								ptmt.setString(2, request.getParameter("text"));
								ptmt.setString(3, request.getParameter("name"));
								
				                  ptmt.execute();
			    		  
			      }
			    		
							
			      if(request.getParameter("type").equals("book")) {
			    		
						
			    	  
				    	
				    	 
				    	
			    	  String sql=null;
			    		  
			    	  
			    	  
			      
			    
			    		  
 
			    	

			    		  
			    			 sql="INSERT INTO `bookcomment` (openid,content,bookname) VALUES (?,?,?)";
			    			 PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			    		  
			    			  ptmt.setString(1, request.getParameter("openid"));
								ptmt.setString(2, request.getParameter("text"));
								ptmt.setString(3, request.getParameter("name"));
								
				                  ptmt.execute();
			    		  
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
