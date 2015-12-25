package com.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.ChangeLog;
import com.test.ChangeLogConversion;

/**
 * Servlet implementation class DemoServlet
 */
public class DemoServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public DemoServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		ChangeLogConversion changeLogConversion = new ChangeLogConversion();
		String content = null;
		try {
			content = changeLogConversion.readContent("D:\\yum-update.git\\changelog-20151207");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Map<Integer,ChangeLog>  titleMap = changeLogConversion.splitTitle(content);
		Map<Integer,String> contentMap = changeLogConversion.splitContent(content);
		List<ChangeLog> resultList = changeLogConversion.getChangeLogList(titleMap, contentMap);
		request.setAttribute("resultLlist", resultList);
		request.getRequestDispatcher("/changelogtest.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
