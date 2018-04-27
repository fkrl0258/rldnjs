package kame.jdbc.loader;

import javax.servlet.http.HttpServlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import java.util.StringTokenizer;

public class Loader extends HttpServlet{
	
	public void init(ServletConfig config) throws ServletException{
		try {
			String drivers = config.getInitParameter("jdbcdriver");
			StringTokenizer st = new StringTokenizer(drivers, ",");
			while (st.hasMoreElements()) {
				String jdbcDriver = st.nextToken();
				Class.forName(jdbcDriver);
			}
		}catch(Exception ex) {
			throw new ServletException(ex);
		}
	}

}
