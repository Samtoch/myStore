<%-- 
    Document   : Alert
    Created on : Feb 7, 2017, 12:56:21 PM
    Author     : samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>ready demo</title>
  <style>
  p {
    color: red;
  }
  </style>
  <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
  <script>
 
  $(function() {
    $( "p" ).text( "The DOM is now loaded and can be manipulated." );
  });
 
  </script>
 
</head>
<body>
 
<p>Not loaded yet.</p>
 
 
</body>
</html>