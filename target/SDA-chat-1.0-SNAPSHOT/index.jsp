<%@ page import="com.sda.chat.service.MyChat" %>
<%@ page import="com.sda.chat.service.MyChatService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page import="com.google.common.base.Strings" %>
<%@ page import="com.sda.chat.service.MyChat" %>
<%@ page import="com.sda.chat.service.MyChatService" %>
<%@ page contentType="text/html" pageEncoding="utf-8" %>


<html>
<head>
    <title>
        My Chat
    </title>
</head>
<body>
<center><font color="blue", size="10", face="Calibri">Chat</font></center>
<p>
    <a href="/login.jsp">Panel Logowania</a>
</p>
<%!
    MyChatService service = MyChatService.getInstance();
%>
<table border="1">
    <tr>
            <th width="100px">Author</th>
            <th width="150px">Date</th>
            <th width="400px">Message</th>
    </tr>
    <%
        for (MyChat chat:service.getMyMessageList()) { %>
    <tr>

            <td><%= chat.getAuthor() %></td>
            <td><%= chat.getTimestamp() %></td>
            <td><%= chat.getMessage() %></td>

    </tr>
  <% } %>
</table>

</body>
</html>