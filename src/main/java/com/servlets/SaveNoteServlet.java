package com.servlets;
import org.hibernate.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(0, title , content, new Date());
			
			//hibernate save
			Session s =	FactoryProvider.getFactory().openSession();	
			Transaction tx = s.beginTransaction();
			
			s.save(note);
			tx.commit();
			
			s.close();
			response.setContentType("text/html");
			PrintWriter out= response.getWriter();
			out.println("<h2 style='text-align:center;'> Note added successfully</h2>");
			out.println("<h2 style='text-align:center;'><a href='all_notes.jsp'> View all notes</a></h2>");
			} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
