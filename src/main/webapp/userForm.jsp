<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/7/4 0004
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Hibernate User Management</title>
</head>
<body>
  <div style="text-align: center;">
    <h1>User Management</h1>
    <h2>
      <a href="new">Add New User</a>
      &nbsp;&nbsp;&nbsp;
      <a href="list">List All Users</a>

    </h2>
  </div>
  <div align="center">
    <c:if test="${user != null}">
    <form action="update" method="post">
      </c:if>
      <c:if test="${user == null}">
      <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
          <caption>
            <h2>
              <c:if test="${user != null}">
                Edit User <c:out value='${user.id}' />
              </c:if>
              <c:if test="${user == null}">
                Add New User
              </c:if>
            </h2>
          </caption>

          <tr>
            <th>User Name: </th>
            <td>
              <input type="text" name="name" size="45"
                     value="<c:out value='${user.name}' />"
              />
            </td>
          </tr>
          <tr>
            <th>User Email: </th>
            <td>
              <input type="text" name="email" size="45"
                     value="<c:out value='${user.email}' />"
              />
            </td>
          </tr>
          <tr>
            <th>Country: </th>
            <td>
              <input type="text" name="country" size="15"
                     value="<c:out value='${user.country}' />"
              />
            </td>
          </tr>
          <tr>
            <td colspan="2" align="center">
              <input type="submit" value="Save" />
            </td>
          </tr>
        </table>
      </form>
  </div>
</body>
</html>
