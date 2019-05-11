

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
@WebServlet("/function")
public class function extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public function() {
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
				 System.out.print("1");
				
			      if(request.getParameter("type").equals("video")) {
			    		
						
			    	  
			    	  String sql="select openid from videofunction where videoname= "+"'"+request.getParameter("name")+"'"+"and openid="+"'"+request.getParameter("openid")+"'"   ;

				        Statement stmt= (Statement) conn.createStatement();
				        ResultSet rs=stmt.executeQuery(sql); 
			    	 
			    	 
			    	  
			    	  if(rs.next()) {
			    
			    	 
			    		  String sql2=null;
			    	
			    		  System.out.print("3");
			    		  if(request.getParameter("mode").equals("1")) {
			    		  sql2="update `videofunction` set `good`="+"'"+request.getParameter("good")+"'"+"where videoname="+"'"+request.getParameter("name")+"'"+"and openid="+"'"+request.getParameter("openid")+"'";}
					
			    		  
			    		  else {
			    			  sql2="update `videofunction` set `save`="+"'"+request.getParameter("save")+"'"+"where videoname="+"'"+request.getParameter("name")+"'"+"and openid="+"'"+request.getParameter("openid")+"'"; }
			    		  
			    		  
						PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql2);
						
					
							
							
		                  ptmt.execute();
			    	  
			    	  }
			    	  
			      
			    	  else {
			    		  
			    		  
  String sql2=null;
			    	
  System.out.print("4");
			    		  if(request.getParameter("mode").equals("1")) {
			    			 sql2="INSERT INTO `videofunction` (openid,good,videoname) VALUES (?,?,?)";
			    			 PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql2);
			    		  
			    			  ptmt.setString(1, request.getParameter("openid"));
								ptmt.setString(2, request.getParameter("good"));
								ptmt.setString(3, request.getParameter("name"));
								
				                  ptmt.execute();
			    		  }
					
			    		
							
			    		  else {
			    			 
			    			  sql2="INSERT INTO `videofunction` (openid,save,videoname) VALUES (?,?,?)";
			    			  PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql2);
			    			  ptmt.setString(1, request.getParameter("openid"));
								ptmt.setString(2, request.getParameter("save"));  
								ptmt.setString(3, request.getParameter("name"));
								
				                  ptmt.execute();
			    		  
			    		  }
			    		  
			    		  
						
						
					
							
						
			    	  
			    	  
			    	  
			    	  
			    	  
			    	  }
			      
			      
			      
			      
			      
			      }
			        
			
				
    if(request.getParameter("type").equals("book")) {
			    		
						
			    	  
			    	  String sql="select openid from bookfunction where bookname= "+"'"+request.getParameter("name")+"'"+"and openid="+"'"+request.getParameter("openid")+"'"   ;

				        Statement stmt= (Statement) conn.createStatement();
				        ResultSet rs=stmt.executeQuery(sql); 
			    	 
			    	 
			    	  
			    	  if(rs.next()) {
			    
			    	 
			    		  String sql2=null;
			    	
			    		  System.out.print("3");
			    		  if(request.getParameter("mode").equals("1")) {
			    		  sql2="update `bookfunction` set `good`="+"'"+request.getParameter("good")+"'"+"where bookname="+"'"+request.getParameter("name")+"'"+"and openid="+"'"+request.getParameter("openid")+"'";}
					
			    		  
			    		  else {
			    			  sql2="update `bookfunction` set `save`="+"'"+request.getParameter("save")+"'"+"where bookname="+"'"+request.getParameter("name")+"'"+"and openid="+"'"+request.getParameter("openid")+"'"; }
			    		  
			    		  
						PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql2);
						
					
							
							
		                  ptmt.execute();
			    	  
			    	  }
			    	  
			      
			    	  else {
			    		  
			    		  
  String sql2=null;
			    	
  System.out.print("4");
			    		  if(request.getParameter("mode").equals("1")) {
			    			 sql2="INSERT INTO `bookfunction` (openid,good,bookname) VALUES (?,?,?)";
			    			 PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql2);
			    		  
			    			  ptmt.setString(1, request.getParameter("openid"));
								ptmt.setString(2, request.getParameter("good"));
								ptmt.setString(3, request.getParameter("name"));
								
				                  ptmt.execute();
			    		  }
					
			    		
							
			    		  else {
			    			 
			    			  sql2="INSERT INTO `bookfunction` (openid,save,bookname) VALUES (?,?,?)";
			    			  PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql2);
			    			  ptmt.setString(1, request.getParameter("openid"));
								ptmt.setString(2, request.getParameter("save"));  
								ptmt.setString(3, request.getParameter("name"));
								
				                  ptmt.execute();
			    		  
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
