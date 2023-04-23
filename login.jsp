<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username != null && password != null && username.equals("admin") && password.equals("admin")) {
        session.setAttribute("username", username);
        response.sendRedirect("home.jsp");
    } else {
        out.println("<script>alert('Tên đăng nhập hoặc mật khẩu không đúng');</script>");
        RequestDispatcher rd = request.getRequestDispatcher("index.html");
        rd.include(request, response);
    }
%>
