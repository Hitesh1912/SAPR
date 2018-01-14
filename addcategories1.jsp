<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     
	     	String s1=request.getParameter("t1");
           
           
          
            
           
           
            

String ccat="Student";

               
int i=0;
		
		try
		{
	
	if(s1.isEmpty())
	{ 
out.print("CATEGORY SHOULD NOT BE NULL");
		
		%><p><a href="addcategories.jsp">Back</a></p>

</body>
</html>

	<%
	}
	else
	{

 Statement st=connection.createStatement();

st.executeUpdate("insert into  category values ('"+s1+"')" );




		out.print("CATEGORY ADDED SUCCESSFULLY");
		
		%><p><a href="addcategories.jsp">Back</a></p>

</body>
</html>

	<% 	}
		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
