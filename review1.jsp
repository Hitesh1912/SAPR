<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html>
<body>
<%
int s1= Integer.parseInt(request.getParameter("t1"));
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
String s4=request.getParameter("t4");
           
           
String uname=(String)application.getAttribute("uname");

SimpleDateFormat sdfDate = new SimpleDateFormat(
		"dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat(
		"HH:mm:ss");

Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String dt = strDate + "   " + strTime;   
            
           
           
            

String ccat="Student";

               
int i=0;
		
		try
		{
	
	

 Statement st=connection.createStatement();

st.executeUpdate("insert into  review values ("+s1+",'"+s2+"','"+s3+"','"+uname+"','"+s4+"','"+dt+"')" );




		out.print("TOPIC REVIEWED SUCCESSFULLY");
		
		%>

</body>
</html>

	<% 	}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
