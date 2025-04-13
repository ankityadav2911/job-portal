package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.JobDao;
import com.db.DBconnect;
import com.entity.Jobs;

@WebServlet("/add_job")
public class AddPostServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String title = req.getParameter("title");
			String location = req.getParameter("location");
			String category = req.getParameter("category");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");

			Jobs j = new Jobs();
			j.setTitle(title);
			j.setTitle(location);
			j.setTitle(category);
			j.setTitle(status);
			j.setTitle(desc);

			HttpSession session = req.getSession();

			JobDao dao = new JobDao(DBconnect.getConn());
			boolean f = dao.addJobs(j);
			if (f) {
				session.setAttribute("succMsg", "Job Post Sucessfully..");
				resp.sendRedirect("add_job.jsp");
			} else {

				session.setAttribute("succMsg", "Some Thing Wrong ..");
				resp.sendRedirect("add_job.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
//ankiskjk