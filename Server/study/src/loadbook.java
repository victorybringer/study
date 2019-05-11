

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
@WebServlet("/loadbook")
public class loadbook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loadbook() {
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
			 String sql="select * from book";

		        Statement stmt= (Statement) conn.createStatement();
		        ResultSet rs=stmt.executeQuery(sql);
		        response.setCharacterEncoding("utf-8"); 
			   PrintWriter out = response.getWriter();  
			
		

			   
			   
		while(rs.next()){
			
					out.println(rs.getString("picture")+"  "+rs.getString("name")+"  "+rs.getString("book")+"  "+rs.getString("major")+"  "+rs.getString("grade"));

			 
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
