package deptServ;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.DeptDAO;
import test.DeptVo;

/**
 * Servlet implementation class DeptInsert
 */
@WebServlet("/DeptInsert")
public class DeptInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeptInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeptDAO dao = new DeptDAO();
		
		DeptVo deptVo = new DeptVo();
		deptVo.setDepartment_id( Integer.parseInt(request.getParameter("department_id")));
		deptVo.setDepartment_name(request.getParameter("department_name"));
		dao.insert(deptVo);
		
		//1. 결과 출력
		/*
		response.setContentType("text/html; charset=UTF-8"); //한글 깨지는거 방지(책101p)
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('등록처리완료');");
		out.print("</script>");
		*/
		
		//2. 페이지 이동 (Redirect)  요청정보가 삭제됨. 재요청으로인해 select로가서 select실행
		//response.sendRedirect("deptSelect.jsp");
		
		//3. 페이지 이동 (forward)  insert의 요청정보request가 살아있음.
		request.getRequestDispatcher("deptSelect.jsp")
				.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}




