import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/hello")
public class HelloWorldServlet extends HttpServlet {
    int hitCount;

    public void initializeCount() {
        hitCount = 0;
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String reset = request.getParameter("reset");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if (name == null) {
            out.println("<h1>Hello, World!</h1>");
        } else {
            out.println(("<h1>Hello, " + name + "!</h1>"));
        }

        if (reset == null) {
            hitCount++;
        } else {
            hitCount = 1;
        }


        PrintWriter up = response.getWriter();
        String title = "Number of hits: ";
        out.println(title + " " + hitCount);



    }
}


