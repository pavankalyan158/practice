<html>
		
		<body background="unesp.jpg" style="background-color:#594E36">
		
			   <%-- comentario em JSP aqui: nossa primeira p�gina JSP --%>
			   
			   
			   <%@page import="java.util.*" %>    
			   <%@page import="javax.swing.*" %>
		
		<head>
		<link rel="icon" href="unesp,jpg" type="image/jpg" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>:: Alterar / Excluir::</title>
		</head>
		
		
		<center>
		<form action="relaciona_moto.jsp" method="get">
		<font color="#FFFFFF" style="background-color:#594E36">
		<b>------------------------------------------------------ Alterar / Excluir ------------------------------------------------------</b>
		
		<br>
		<br>
		
		Selecione a Moto a ser alterada:
		<select name="escolhemoto">
			<%
			String xplaca,xmarca,xmodelo, xobs, xfoto;
			try{
				bsql_moto bsql=new bsql_moto();
				bsql.connect();
				ArrayList vetor=new ArrayList();
				
				 vetor=bsql.pegadados_moto();
				 bsql.disconnect();
				if(!vetor.isEmpty())
				{	
				for(int j=0; j<vetor.size();j++)
						   {
						 xplaca=""+vetor.get(j); j++;
						 xmarca=""+vetor.get(j); j++;
						 xmodelo=""+vetor.get(j); j++;
						 xobs=""+vetor.get(j); j++;
						 xfoto=""+vetor.get(j); 
				%>	        
							   
			<br>
			<option size="20dp" value="<%out.print(xplaca);%>" name="nome"><%out.print(xplaca+"-"+xmarca+"-"+xmodelo+"-"+xobs+"-"+xfoto);%>
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