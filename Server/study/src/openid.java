

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;


/**
 * Servlet implementation class watchB
 */
@WebServlet("/openid")
public class openid extends HttpServlet {
	


	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public openid() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			  String requestUrl = "https://api.weixin.qq.com/sns/jscode2session";
			
			  BufferedReader in = null;
			  String result = "";
			  PrintWriter out = response.getWriter();  
			
			  String urlNameString = requestUrl+"?appid=wx27b44fda89f37897&js_code="+request.getParameter("code")+"&secret=f3f3603a8e70460bbffaa73f3f94691b&grant_type=authorization_code";
			  URL realUrl = new URL(urlNameString);
			  
			  URLConnection connection = realUrl.openConnection();
			 
		
			  connection.connect();
		

			  in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			  
	          
			  String line=null;
			  while((line = in.readLine()) != null){
				
				 
				  result += line;
			  
			  
			  }
			  
			  
			  
				
			
			  
			  
			 out.print(result) ;
			  
			

		
		
		
		
		

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
