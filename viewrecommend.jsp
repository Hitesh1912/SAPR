<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style1 {
	color: #FF3300;
	font-weight: bold;
	font-size: 24px;
}
.style5 {font-size: 18px; font-weight: bold; color: #0000FF; }
-->
</style>
</head>
<body>
<div align="center" class="style1">Recommended Details...!</div>
<p>&nbsp;</p>


<%

String uname=(String)application.getAttribute("uname");	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
      		
      		
        
           String query="select * from recommend where uto ='"+uname+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		
	
		   %>

<table width="669" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style5">Topic ID</div></td>
    <td width="480"><%=i%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Topic Name </div></td>
    <td><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Recommend To </div></td>
    <td><%=s3%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Recommend From</div></td>
    <td><%=s4%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Details</div></td>
    <td><%=s5%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Date and Time</div></td>
    <td><%=s6%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">View the Topic</div></td>
    <td><div align="left"><a href="details.jsp?id=<%=i%>"><strong>View&nbsp;</strong></a></div></td>
  </tr>
  
</table>

<p>&nbsp;</p>
<p align="center"><strong>

  <%
out.println("------------------------------------------------------------------------------------------------------------");
	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
</strong></p>
<p>&nbsp;</p>
</body>
</html>