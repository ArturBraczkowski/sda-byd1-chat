<%@ page import="com.sdatwitter.service.MyTwitterService" %>
<%@ page import="com.sdatwitter.service.MyTweet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page import="com.google.common.base.Strings" %>
<%@ page contentType="text/html" pageEncoding="utf-8" %>


<html>
<head>
    <title>
        SDA Tweeter
    </title>
</head>
<body>
<center><h1 color="blue">Twitter</h1></center>
<p>
    <a href="/publish.jsp">publish tweet</a>
</p>
<%!
    MyTwitterService service = MyTwitterService.getInstance();
%>
<table border="1">
    <tr>
            <th width="100px">Author</th>
            <th width="150px">Date</th>
            <th width="400px">Message</th>
    </tr>
    <%
        for (MyTweet tweet:service.getMyTweetList()) { %>
    <tr>

            <td><%= tweet.getAuthor() %></td>
            <td><%= tweet.getTimestamp() %></td>
            <td><%= tweet.getTweet() %></td>

    </tr>
  <% } %>
</table>

</body>
</html>