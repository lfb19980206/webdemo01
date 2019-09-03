<%@ page import="com.User" %>
<%@ page import="java.com.lufeibin.userManage.DAO.util.List" %>
<%@ page import="java.com.lufeibin.userManage.DAO.util.ArrayList" %>
<%@ page import="java.com.lufeibin.userManage.DAO.util.Map" %>
<%@ page import="java.com.lufeibin.userManage.DAO.util.HashMap" %>
<%@ page contentType="text/html; utf-8" language="java" isELIgnored="false" %>

    <%
        request.setAttribute("name","zhangsan");
        session.setAttribute("user","lisi");
    %>
    <%
        User user = new User();
        user.setAge(18);
        user.setName("zha");
        User user1 = new User();
        user1.setName("sfj");
        user1.setAge(19);
        List list = new ArrayList();
        list.add(user);
        list.add(user1);
        request.setAttribute("list",list);
    %>
    <%
        Map<String,String> map = new HashMap<>();
        map.put("zhagn","nan");
        map.put("aslk","mam");
        request.setAttribute("map",map);
    %>




 

<html>
<head>
    <title>Title</title>
</head>
<body>

<%--${requestScope.name}--%>
<%--${sessionScope.user}--%>

    ${list}
    ${requestScope.list}
    ${list[0]}
    ${list[0].name}

    ${requestScope.map}
    ${map.zhagn}
    ${map[zhagn]}
    ${map}

</body>
</html>
