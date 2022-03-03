<%@ page import="java.util.List" %>
<%@ page import="com.codegym.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/3/2022
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      table,td{
        border: 1px solid black;
      }
      table{
        border-collapse: collapse;
      }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  </head>
  <body>
  <%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Bill","1980-01-01","USA",20,"/img/billgate.jpg"));
    customers.add(new Customer("Jeff","1980-01-15","USA",30,"/img/jeff.jpg"));
    customers.add(new Customer("Musk","1980-02-01","USA",40,"/img/mulsk.jpg"));
    customers.add(new Customer("Warren","1970-01-01","USA",50,"/img/warren.jpg"));
    pageContext.setAttribute("listCustomer",customers);
  %>
<%--  <div style="text-align: center">--%>
  <h1 style="text-align: center; color:red">Danh sách khách hàng</h1>
<%--  </div>--%>
<%--  <table class="table">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--      <th scope="col">Tên khách hàng</th>--%>
<%--      <th scope="col">Ngày sinh</th>--%>
<%--      <th scope="col">Địa chỉ</th>--%>
<%--      <th scope="col">Tuổi</th>--%>
<%--      <th scope="col">Ảnh</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <c:forEach var="customer" items="${listCustomer}">--%>
<%--      <tr>--%>
<%--        <td>${customer.name}</td>--%>
<%--        <td>${customer.dateOfBirth}</td>--%>
<%--        <td>${customer.address}</td>--%>
<%--        <td>${customer.age}</td>--%>
<%--        <td><img src="${customer.image}" alt="" width="150" height="150"></td>--%>
<%--      </tr>--%>
<%--    </c:forEach>--%>
<%--  </table>--%>
  <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">Tên khách hàng</th>
      <th scope="col">Ngày sinh</th>
      <th scope="col">Địa chỉ</th>
      <th scope="col">Tuổi</th>
      <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${listCustomer}">
      <tr>
        <th scope="row">${customer.name}</th>
        <td>${customer.dateOfBirth}</td>
        <td>${customer.address}</td>
        <td>${customer.age}</td>
        <td><img src="${customer.image}" alt="" width="150" height="150"></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
