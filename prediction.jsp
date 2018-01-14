<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
	color: #FF3300;
}
.style6 {font-size: 24px; font-weight: bold; color: #FF3300; font-style: italic; font-family: "Courier New", Courier, monospace; }
.style7 {
	font-size: 36px;
	font-family: "Courier New", Courier, monospace;
}
-->
</style>
</head>
<body>

<%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select cname FROM category"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("cname"));
		
	   }
	   
		
		
%>
<form action="prediction1.jsp" method="post" name="form1" class="style1">
  <div align="center">
    <p class="style7">Prediction Details!!! </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="477" border="0" align="center">
      <tr>
        <td width="298"><div align="left"><span class="style6">Select the Category </span></div></td>
        <td width="169"><label>
          <select name="s1">
		   <option selected>--Select--</option>
        <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
           <option><%= a1.get(i)%></option>
           
           <%}%>
          </select>
        </label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><label>
          <div align="right">
            <input required name="Submit" type="submit" class="style1" value="Search">
          </div>
        </label></td>
        <td>&nbsp;</td>
      </tr>
    </table>
    <p>&nbsp;  </p>
  </div>
</form>
<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

</body>
</html>