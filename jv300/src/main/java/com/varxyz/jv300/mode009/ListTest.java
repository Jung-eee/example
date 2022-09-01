package com.varxyz.jv300.mode009;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mode009/course_contents.do")
public class ListTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static List<String> textLines;
    
	   
	public void init(ServletConfig config) throws ServletException {
		ServletContext context = config.getServletContext();
		List<String[]> contentList = (List<String[]>)context.getAttribute("contentList");
		textLines = tapToSpace(contentList);
	}

	
	private List<String> tapToSpace(List<String[]> contentList) {
		List<String> lineList = new ArrayList<>();
		if(contentList.size() > 0 ) {
			for(String[] contents : contentList) {
//				if(isEmptyLine(contents)) {
//					continue;
//				}
				for (int i = 0; i < contents.length; i++) {
					if(contents[i].length() == 0) {
						contents[i] = "<span class=\"tab\">";
						contents[contents.length - 1] = contents[contents.length -1] + "</span>";
					}
				}
			}
		}
		else {
			textLines.add("-No-Data");
		}
		String line ="";
		for(String[] contents : contentList) {
			for(String content : contents) {
				line += content;
			}
			lineList.add(line);
			line = "";
		} 
		return lineList;
	}


	private boolean isEmptyLine(String[] contents) {
		// TODO Auto-generated method stub
		return false;
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setAttribute("textLines", textLines);
		request.getRequestDispatcher("course_contents.jsp").forward(request, response);
	}
}
