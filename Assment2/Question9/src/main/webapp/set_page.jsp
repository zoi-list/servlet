<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>Set Tag</title> 
</head> 
<body> 
    <h1> 
        <c:set var="name" value="Ashok"/> 
        Hello, ${name} 
    </h1> 
</body> 
</html>
