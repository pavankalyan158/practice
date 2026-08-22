<%@page language="Java" import="java.sql.*" %>    
<%@page language="Java" import="javax.swing.*" %>
<%@page language="Java" import="database.Bancosql"%>
<%@page language="Java" import="java.util.*" %>

<html>

<body background="unesp.jpg">
       <%-- comentario em JSP aqui: nossa primeira p�gina JSP --%>
<head>
<link rel="icon" href="unesp.jpg" type="image/jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: Alterar / Excluir::</title>
</head>
<center>
<form action="relaciona.jsp" method="get">
<font color="#000">
<b>------------------------------------------------------ Alterar / Excluir ------------------------------------------------------</b>

<br>
<br>

Selecione a Matricula a ser alterada:
<select name="escolhematricula">
    <%
	String xmat,xnom,xtur, xema, xfot;
	try{
        		
		ArrayList vetor=new ArrayList();
		
         vetor=Bancosql.pegadados();
		 
        if(!vetor.isEmpty())
		{	
		for(int j=0; j<vetor.size();j++)
    		   	{
				 xmat=""+vetor.get(j); j++;
				 xnom=""+vetor.get(j); j++;
				 xtur=""+vetor.get(j); j++;
				 xema=""+vetor.get(j); j++;
				 xfot=""+vetor.get(j); 
    	%>	        
    		   		
	<br>
	<option size="20dp" value="<%out.print(xmat);%>" name="nome"><%out.print(xmat+"-"+xnom+"-"+xtur);%>
	</option>

	<%
    		}//for
    	}//if
    		 else
    		 {
    		       out.println("tabela vazia");
    		 }
        }//try
    	catch(Exception e)
    	{
    		out.println("ERRO="+e);
    		
    	}//catch		 
    %>
</select>


</font>&nbsp;&nbsp;&nbsp;
<input type="submit" name="teste" value="Enviar" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<br>
<br>

</form>

</center>
</body>
</html>