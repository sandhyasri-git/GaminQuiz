<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center" >Select Paper</h2>  
<hr width=600 >

 <form:form modelAttribute="language" action="selectpaper" >
 <table align="center" >
 <tr>
  <td>
   Select Paper:
  </td>
  <td>
    <form:select path="languageName">
     <form:option label="--Select Language--" value="-1" />
     <form:options items="${languagelist}" itemLabel="languageName" itemValue="languageName" />     	
    </form:select>  
  </td>
 </tr>
 <tr> 
  <td></td>
  <td><font color="red" ><core:out value="${errormessage}"></core:out></font></font> </td>  
 </tr> 
 <tr> 
  <td></td>
  <td><input type="submit" value="Submit"  /></td>  
 </tr> 
</table> 
 
</form:form>
 
</body>
</html>