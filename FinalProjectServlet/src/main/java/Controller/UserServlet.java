package Controller;

import Model.User;
import Service.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html");
//        PrintWriter pw = response.getWriter();

        String action = request.getParameter("page");
        System.out.println(action);

        if(action.equalsIgnoreCase("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            System.out.println(username + " " + password + " ");
//            UserService userService = new UserService();
            User user = new UserService().getUser(username,password);
            if(user != null){
                HttpSession session = request.getSession();

                session.setAttribute("uid", user.getId());
                session.setAttribute("userName", user.getUsername());
                session.setAttribute("user", user);

                request.setAttribute("msg", "login Success!!!!");

                RequestDispatcher rd = request.getRequestDispatcher("Pages/Dashboard.jsp");
                rd.forward(request, response);
            }else{
                request.setAttribute("msg", "Invalid username or password");

                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);

            }


        }
        if(action.equalsIgnoreCase("register")){
            User user = new User();
            System.out.println(request.getParameter("full_name"));
            user.setFull_name(request.getParameter("full_name"));
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setRole(request.getParameter("role"));

            new UserService().insertUser(user);

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
        if (action.equalsIgnoreCase("index")){
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
        if (action.equalsIgnoreCase("logout")){
            HttpSession session = request.getSession(false);
            session.invalidate();
            request.setAttribute("msg", "logout success");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
        if (action.equalsIgnoreCase("deleteUser")){
            int id = Integer.parseInt(request.getParameter("id"));
           // new UserService().deleteUser(id);
//            this is same
            UserService userservice = new UserService();
            userservice.deleteUser(id);

            List<User> userList = userservice.getUserList();
            request.setAttribute("userList", userList);

            RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
            rd.forward(request, response);

        }

        if (action.equalsIgnoreCase("addUser")) {
            User user = new User();
            user.setFull_name(request.getParameter("full_name"));
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setRole(request.getParameter("role"));
            new UserService().insertUser(user);
            List<User> userList = new UserService().getUserList();
            request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("listUser")) {
            User user = new User();
            List<User> userList = new UserService().getUserList();
            request.setAttribute("userList", userList);
            request.setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
            rd.forward(request, response);
        }

        if(action.equalsIgnoreCase("newUser")){
            RequestDispatcher rd = request.getRequestDispatcher("Pages/register.jsp");
            rd.forward(request, response);
        }
        if (action.equalsIgnoreCase("editUser")){
            User user = new User();
            int id = Integer.parseInt(request.getParameter("id"));
            user.setFull_name(request.getParameter("full_name"));
            user.setUsername(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setRole(request.getParameter("role"));

            UserService userservice = new UserService();

            userservice.editUser(id, user);

            List<User> userList = userservice.getUserList();
            request.setAttribute("userList", userList);

            RequestDispatcher rd = request.getRequestDispatcher("Pages/list_user.jsp");
            rd.forward(request, response);
        }
    }
}
