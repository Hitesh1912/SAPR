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
.style6 {color: #FF00FF}
-->
</style>
</head>
<body>
<div align="center" class="style1">Prediction  Details...!</div>
<p align="center">&nbsp;</p>


<%
		String x1=request.getParameter("s1");

	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;
	 
      	try 
	{
      		
      		
        
           String query="select * from pos where category='"+x1+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next() )
	   {
		
		s2=rs.getString(2);
		s3=rs.getString(3);
		}
			 
	String query1="select * from neg where category='"+x1+"' "; 
    Statement st1=connection.createStatement();
    ResultSet rs1=st1.executeQuery(query1);
if ( rs1.next() )
{
	
	
	s4=rs1.getString(3);
	}
			
			        
				
		    	 %>

		    	 <table width="669" border="0" align="center">
		    	   <tr>
		    	     <td width="179"><div align="left" class="style5">Category </div></td>
		    	     <td width="480"><%=x1%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style5">Total No of Reviews </div></td>
		    	     <td><%=s2%></td>
		    	   </tr>
		    	   
		    	   <tr>
		    	     <td><div align="left" class="style5">Positive Reviews </div></td>
		    	     <td><%=s3%></td>
		    	   </tr>
		    	   <tr>
		    	     <td><div align="left" class="style5">Negative Reviews </div></td>
		    	     <td><%=s4%></td>
		    	   </tr>
		    	 </table>
					
					<%
					
					if(Integer.parseInt(s3)>Integer.parseInt(s4))
					{
						
						%>
						
						<p>&nbsp;</p>
		    	 <div align="center" class="style1 style6">Based on these values you can buy the product pos for usage..... </div>
		    	 <p>&nbsp;</p>
		    	 <p align="center">
						
						<%
						
						
					}
					else
					{
						
						
						%>
						
						<p>&nbsp;</p>
		    	 <div align="center" class="style1 style6">Based on these values you can buy the product  neg for usage..... </div>
		    	 <p>&nbsp;</p>
		    	 <p align="center">
						<%
						
					}
					
					
					
					%>



	
		    	 

		    	   <%
		    	 
		    
	
		  

	 
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