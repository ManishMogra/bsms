package com.user.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDaoImpl;
import com.DB.DBConnect;
import com.entity.BookDetails;

@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBook extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String categories = "Old";
			String status ="Active";
			Part part = req.getPart("bimg");
			String filename = part.getSubmittedFileName();
			
			String useremail=req.getParameter("user");

			BookDetails b = new BookDetails(bookName, author, price, categories, status, filename, useremail);

			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());

			boolean f = dao.addBooks(b);
			HttpSession session = req.getSession();

			if (f) 
			{
				String path = getServletContext().getRealPath("") + "book";
				File file = new File(path);
				part.write(path + File.separator + filename);
				session.setAttribute("succMsg", "Book Add Successfully");
				resp.sendRedirect("sell_book.jsp");
			} 
			else 
			{
				session.setAttribute("failedMsg", "Something wrong on server");
				resp.sendRedirect("sell_book.jsp");
			}

			// System.out.println(b);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}