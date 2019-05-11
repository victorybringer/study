

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

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
@WebServlet("/loadfunction")
public class loadfunction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loadfunction() {
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
					 
					 
				if(request.getParameter("type").equals("video")) {	 
					 sql="select * from videofunction  where videoname="+ "'"+request.getParameter("name")+"'"+"and openid="+"'"+request.getParameter("openid")+"'"   ;
					 
				
				
				
				
				
				
				
				
				}
				else {
					 sql="select * from bookfunction  where bookname="+ "'"+request.getParameter("name")+"'"+"and openid="+"'"+request.getParameter("openid")+"'" ;
				}
		        Statement stmt= (Statement) conn.createStatement();
		        ResultSet rs=stmt.executeQuery(sql);
		        response.setCharacterEncoding("utf-8"); 
			   PrintWriter out = response.getWriter();  
			
		

			   
			   
		if(rs.next()){
			
					out.println(rs.getString("good")+"  "+rs.getString("save"));

			 
			 }	
				
		else {
			out.println("false"+"  "+"false");
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
