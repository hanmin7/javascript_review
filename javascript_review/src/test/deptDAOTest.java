package test;

import java.util.ArrayList;

public class deptDAOTest {
	public static void main(String[] args) {
		DeptDAO dao = new DeptDAO();
		//dao.insert(new DeptVo(1200, "인사"));
		//dao.update(new DeptVo(1000, "영업"));
//		DeptVo dept = new DeptVo();
//		dept.setDepartment_id(1001);
//		dao.delete(dept);
		//dao.delete(new DeptVo(1000, null));
		/*
		 * DeptVo deptVo = dao.selectOne(new DeptVo(10)); System.out.println(deptVo);
		 */
		ArrayList<DeptVo> list = dao.selectAll(null);
		System.out.println(list);
//		for(DeptVo vo : list) {
//			System.out.println(vo.toString());
//		}
	}
}
