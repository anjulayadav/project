package p1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dao.SweetHomeDAOImpl;

@MultipartConfig(maxFileSize = 16177216)
public class UploadImage extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int result = 0;
		Connection con = null;
		Part part = req.getPart("image");

		if (part != null) {
			try {
				HttpSession session1 = req.getSession(false);
				String username =(String)session1.getAttribute("username");
				String ptype = req.getParameter("ptype");
				String city = req.getParameter("city");
				String location = req.getParameter("location");
				int price = Integer.parseInt(req.getParameter("price"));
				int rent = Integer.parseInt(req.getParameter("rent"));
				int deposit = Integer.parseInt(req.getParameter("deposit"));
				int bedroom_no = Integer.parseInt(req.getParameter("bedroom_no"));
				int bathroom_no = Integer.parseInt(req.getParameter("bathroom_no"));
				String residence_type = req.getParameter("residence_type");
				String furnishing = req.getParameter("furnishing");
				String payment_mode = req.getParameter("payment_mode");
				String transport_mode = req.getParameter("transport_mode");
				String extra_facility = req.getParameter("extra_facility");
				InputStream is = part.getInputStream();
				SweetHomeDAOImpl dampl = new SweetHomeDAOImpl();
			result=dampl.addProperty( username, ptype, city, location, price, rent, deposit, bedroom_no,
						bathroom_no, residence_type, furnishing, payment_mode, transport_mode, extra_facility, is);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		if (result > 0) {
			resp.sendRedirect("buyerDashboard.jsp");
		} else {
			resp.sendRedirect("result.jsp?message=Some+Error+Occurred");
		}
	}
}