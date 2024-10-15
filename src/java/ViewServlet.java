import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;  
import java.io.PrintWriter;  
import java.util.List;  
  
import jakarta.servlet.ServletException;  
import jakarta.servlet.annotation.WebServlet;  
import jakarta.servlet.http.HttpServlet;  
import jakarta.servlet.http.HttpServletResponse;  
@WebServlet("/ViewServlet")  
public class ViewServlet extends HttpServlet {  
    
	private static final long serialVersionUID = 1L;
        
        @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
               throws ServletException, IOException {  
        response.setContentType("text/html");  
            try (PrintWriter out = response.getWriter()) {
                out.println("<a href='addstudent.html'>Add New Record</a>");
                out.println("<h1>All Student List</h1>");
                
                List<Student> list=StudentDatabase.getAllEmployees();
                
                out.print("<table border='2' width='100%'");
                out.print("<tr><th>Id</th><th>Name</th><th>Mobile</th><th>Email</th><th>Branch</th><th>Edit</th><th>Delete</th></tr>");
                
                for(Student e:list){
                    out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getMobile()+"</td><td>"+e.getEmail()+"</td><td>"+e.getBranch()+"</td><td><a href='EditServlet?id="+e.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+e.getId()+"'>delete</a></td></tr>");
                    
                    
                }
                out.print("</table>");
            }  
    }  
}  