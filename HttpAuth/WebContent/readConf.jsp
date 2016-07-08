<%@page language="java" import="org.apache.commons.lang3.StringEscapeUtils"%>
<%@page language="java" import="de.axnx.FileUtils"%>
<%@page language="java" import="java.util.*" %> 
<%@page language="java" import="java.util.ResourceBundle" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Configuration</title>
</head>
<body>
    <%= "Hello " %><br><br>
    
    <%
    	ServletContext context = this.getServletContext();
    	String fullPath = context.getRealPath("/WEB-INF/app.properties");
    	out.print(fullPath);
    	out.print("<br><br><br><br>");
    	out.print( FileUtils.fileExists(fullPath));
    		
    	Properties props = new Properties();
    	
    	//props = FileUtils.readProperties(StringEscapeUtils.escapeJava(fullPath));
    	props = FileUtils.readProperties(fullPath);
    	
    	String path1 = props.getProperty("path1");
        String path2 = props.getProperty("path2");

         String path1_form = request.getParameter("path1");
         String path2_form = request.getParameter("path2");
        
         if(!path1.equals(path1_form) && path1_form != null){
        	 path1 = path1_form;
        	 props.setProperty("path1", path1_form);
         	
         };	
         if(!path2.equals(path2_form) && path2_form != null){
        	path2 = path2_form;
          	props.setProperty("path2", path2_form);
         };	
        
         FileUtils.writeProperties(fullPath, props, "my header");
     %>
    <form> 
    <label for="path1">Path1: 
    <input id="path1" name="path1" value=<%= path1 %>></label><br>
    <label for="path2">Path2: 
    <input id="path2" name="path2" value=<%= path2 %>> </label><br><br>
    <input type="submit" value="save">
    
</body>
</html>