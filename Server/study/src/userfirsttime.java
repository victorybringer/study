

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
@WebServlet("/userfirsttime")
public class userfirsttime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userfirsttime() {
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
					ArrayList <String>user= new ArrayList<String>();
					
				Connection conn	 = (Connection) DriverManager.getConnection(url,    "root","123456");
				Class.forName("com.mysql.jdbc.Driver");
				 String sql="select * from user";

			        Statement stmt= (Statement) conn.createStatement();
			        ResultSet rs=stmt.executeQuery(sql);
				
			        
			        
			        response.setCharacterEncoding("utf-8");
	
		
				if(request.getParameter("openid").equals("")==false) {
			
			
				while(rs.next()){
					
				user.add(rs.getString("openid"));

			 
			 }	
				boolean exist=false;
				for (int i = 0; i < user.size(); ++i) {

					if (user.get(i).equals(request.getParameter("openid")) ) {

						exist = true;
						
						
						

					}
					
				}
				
				
				
			if(exist==false) {
				
				
				String sql2="INSERT INTO `user` (openid) VALUES (?)";
				response.setCharacterEncoding("utf-8");
				PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql2);
				
			
					ptmt.setString(1, request.getParameter("openid"));
					
					
					
                  ptmt.execute();
				
				
			}
			if(exist==true) {
				
				 sql="select * from user where openid="+"'"+request.getParameter("openid")+"'";

			       stmt= (Statement) conn.createStatement();
			        rs=stmt.executeQuery(sql);
				
			        if(rs.next()){
						
						if(rs.getString("grade")==null) {
							exist=false;
						};

						System.out.println(rs.getString("grade")+"aa");
					 }	
			
			
			
			
			}
				
				out.print(exist);
				
				
				}
				else {
					
					out.print("err");
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
