package myservlet;

import com.JBean.userbean;
import com.dbc.dataBase;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/aaaa.do")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        System.out.println(id + ":" + pwd);
//        dataBase.consql();

        //验证
        dataBase dao=new dataBase();
        List<userbean> list =dao.consql();
        for(userbean tl:list){
            if(Integer.parseInt(id)==tl.getUid() && pwd.equals(tl.getPwd())){
                response.sendRedirect("tabtest/ttest.jsp");
            }
        }
    }
}
