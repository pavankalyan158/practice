<html>

<body style="background-color:#594E36">


       <%-- coment rio em JSP aqui: nossa primeira p gina JSP --%>
       
 
       <%@page import="java.sql.*" %>    
       <%@page import="javax.swing.*" %>


       <%
 
        String xplaca="", xmarca="", xmodelo="",xobs="",xfoto="";
		
        String num = request.getParameter("escolhemoto");
        
	    try
    	{
    	bsql_moto bsql=new bsql_moto();
		bsql.connect();	
		if(bsql.procurar_moto(num))
    	{
			    xplaca=bsql.getPlaca_moto();
			    xmarca=bsql.getMarca_moto();
				xmodelo=bsql.getModelo_moto();
				xobs=bsql.getObs_moto();
				xfoto=bsql.getFoto_moto();
				bsql.excluir_moto();
		}
		else
		{
                  xplaca="vazio";
                  xmarca="vazio";
		}
		bsql.disconnect();
      	}//try
    	catch(Exception e)
    	{
    		out.println("ERRO="+e);
    		
    	}//catch
 	
	%>

<head>
<link rel="icon" href="imagens/jogador.png" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: Alterar / Excluir::</title>
</head>
<center>


<form action="alteraexclui_moto.jsp" method="post">
<font color="#FFFFFF" style="background-color:#594E36">
<b>-- Alterar / Excluir ----</b>


	<table width="200" border="0" align="center">
	<tr>
		<td height="40">Placa:</td>
		<td><input type="text" name="placa" value="<%out.print(xplaca);%>" />
		</td>
		
	</tr>
	<tr>
		<td height="40">Marca:</td>
		<td><input type="text" name="marca" value="<%out.print(xmarca);%>"/>
		</td>
       
	</tr>
	
	<tr>
		<td height="40">Modelo:</td>
		<td><input type="text" name="modelo" value="<%out.print(xmodelo);%>"/>
		</td>
       
	</tr>
	
	
	<tr>
	<td height="40">Obs:</td>
        <td><input type="text" name="obs" value="<%out.print(xobs);%>"/>
        </td>
	</tr>
	
	
	<tr>
	    <td height="40">Foto:</td>
		<td>
		<img src="<%out.print(xfoto);%>" width="100" >
		
 		<input type="text" name="txtfoto" value="<%out.print(xfoto);%>" readonly/>
	    </td>
		<td>	    
		   <input type="file" size="50" name="foto" title="Clique aqui para procurar arquivo" >
		</td> 
		<td>
			
 		<input type="text" name="txtfoto" value="<%out.print(xfoto);%>" readonly/>
	    </td>
		
	</tr>
	
	
	</table>

	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<label for="altera">
 	<input type="radio" id="altera" name="altexc" value="alterar" checked="true"> Alterar
 	<label for="exclui">
	<input type="radio" id="exclui" name="altexc" value="excluir"> Excluir

</font>&nbsp;&nbsp;&nbsp;
<input type="submit" name="teste" value="Enviar" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<br>

</form>

</center>

</body>
</html>