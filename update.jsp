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
<div align="center" class="style1">All Posts Details...!</div>
<p align="center"><img src="Post.jpg" width="462" height="91"></p>


<%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
        
           String query="select * from posts "; 
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
		
		j=rs.getInt(8);
	
%>

<table width="669" border="0" align="center">
  <tr>
    <td width="179"><div align="left" class="style5">Category</div></td>
    <td width="480"><%=s2%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Title Name </div></td>
    <td><%=s3%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Title Description </div></td>
    <td><%=s4%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Location</div></td>
    <td><%=s5%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Address</div></td>
    <td><%=s6%></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Title Images </div></td>
    <td><div align="center">
      <input required name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    </div></td>
  </tr>
  <tr>
    <td><div align="left" class="style5">Update</div></td>
    <td><a href="updateconfirmation.jsp?mid=<%=i%>"> Update &nbsp;</a></td>
  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">

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
</p>
<p>&nbsp;</p>
</body>
</html>