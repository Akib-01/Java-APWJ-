<%--
  Created by IntelliJ IDEA.
  User: jawad
  Date: 11/4/2022
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Income Tax Calculator</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<div class="container">

<h1>Income Tax Calculator</h1>
<br>
    <div class="card">
        <div class="card-body">
<form:form action="calculator" modelAttribute="variables">
    <div class="form-group row">
    <label for="category" class="col-sm-2 col-form-label">Choose Tax Payer Category</label>
    <br>
    <form:select name="category" id="category" path="category" class="form-control">
        <option value="g" name="genaral" >Genaral</option>
        <option value="f" name="f/s">Female/Senior citizen</option>
        <option value="d" name="dis">Disabled</option>
        <option value="e" name="fre">Freedom Fighter</option>
    </form:select>
    <form:errors path="category"/>
    <br><br>
    <label for="zone" class="col-sm-2 col-form-label">Zone</label>
    <br>
    <form:select name="zone" id="zone" path="zone" class="form-control">
    <option value="d" name="dhaka" >Dhaka and Chittagong</option>
    <option value="c" name="f/s">Other city</option>
    <option value="w" name="dis">Rest of the world</option>

    </form:select>
        <form:errors path="category"/>
    <br><br>



<br><br>
    <label for="basic_salary" class="col-sm-2 col-form-label">Basic Salary</label>
    <form:input  path="basic_salary" id="basic_salary" class="form-control"/>

    <form:errors path="basic_salary"/>

            <br>

    <label for="house_rent" class="col-sm-2 col-form-label">House Rent</label>
    <form:input  path="house_rent" id="house_rent" class="form-control"/>
    <form:errors path="house_rent"/>
    <br>
    <label for="Medical" class="col-sm-2 col-form-label"> Medical Allowance</label>
    <form:input  path="medical" id="medical" class="form-control"/>
    <form:errors path="medical"/>
    <br>
    <label for="con" class="col-sm-2 col-form-label">Conveyance</label>
    <form:input  path="con" id="con" class="form-control"/>
    <form:errors path="con"/>
    <br>
    <label for="festival" class="col-sm-2 col-form-label">Festible Bonus</label>
    <form:input  path="festival" id="festival" class="form-control"/>
    <form:errors path="festival"/>
    <br>
    <label for="investment" class="col-sm-2 col-form-label">Investment</label>
    <form:input  path="investment" id="investment" class="form-control"/>
    <form:errors path="investment"/>
    <br>

    <input type="submit" value="submit" class="btn btn-primary">
        </div>
</form>
</form:form>
    <h3><c:out value="Taxable income(annually): ${ti}" /></h3><br>
<h3><c:out value="Total tax: ${yearTax}" /></h3><br>
    <h3><c:out value="Monthly tax: ${monthTax}" /></h3>
        </div>
    </div>
</div>
</body>
</html>
