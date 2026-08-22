<%@page language="Java" import="java.sql.*" %>    
<%@page language="Java" import="javax.swing.*" %>
<%@page language="Java" import="database.Bancosql"%>
<%@page language="Java" import="java.util.*" %>

<html>
<body background="unesp.jpg">
<head>
<link rel="icon" href="unesp.jpg" type="image/jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: Consulta TODOS::</title>
</head>
<center>

<form action="principal.html" method="get">
<font color="#000">
<b>------------------- Consultar Todos ------------------------------------------------------</b>

<br>
<br>
<table width="200" hidth="200"  border="0" align="center" style="background-color:red"><tr>
<div style="width:500px; height: 200px; overflow: auto;">
   	<%
		try
	    	{
			ArrayList vetor=new ArrayList();
			vetor=Bancosql.pegadados();
    		
    		if(!vetor.isEmpty())
    		{
			 for(int j=0; j<vetor.size(); j++)
    		   	{
    		   	String xmat=""+vetor.get(j); j++;
				String xnom=""+vetor.get(j); j++;
				String xtur=""+vetor.get(j); j++;
				String xema=""+vetor.get(j); j++;
				String xfot=""+vetor.get(j); 
				
				out.println("|"+xmat+"|"+xnom+"|"+xtur+"|<br/><br>" );
    		   	}//for
    		}
    		else
    		{
    			out.println("| TABELA VAZIA ");
    		}    

         }//try
    	catch(Exception e)
    	{
    		out.println("ERRO="+e);
    		
    	}//catch
        %></div>
</tr>
</table>
<br>
<br>
 <input type="submit" name="teste" value="Fim" align="top" /><br>

</form>

</center>

</body>
</html>