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
//        dataBase.csql();
        boolean sw=false;
        //验证
        dataBase dao=new dataBase();
        try{
            List<userbean> list =dao.usersql();
            for(userbean tl:list){
                if(Integer.parseInt(id)==tl.getUid() && pwd.equals(tl.getPwd())){
                    sw =true;
                }
//                    response.sendRedirect("index.jsp");
            }
            if(sw){
                response.sendRedirect("tabtest/ttest.jsp");
                sw = false;
            }else {
                response.sendRedirect("index.jsp");
            }
        }catch (Exception e){

        }

    }
}
