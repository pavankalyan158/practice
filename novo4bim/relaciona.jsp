<%@page language="Java" import="java.sql.*" %>    
<%@page language="Java" import="javax.swing.*" %>
<%@page language="Java" import="database.Bancosql"%>
<%@page language="Java" import="java.util.*" %>

<html>
<script>
function extractFilename(path) {
  if (path.substr(0, 26) == "C:\\apache-tomcat-6.0.29\\")
    return path.substr(26); // modern browser
  var x;
  x = path.lastIndexOf('/');
  if (x >= 0) // Unix-based path
    return path.substr(x+1);
  x = path.lastIndexOf('\\');
  if (x >= 0) // Windows-based path
    return path.substr(x+1);
  return path; // just the file name
}
</script>

<body background="unesp.jpg">
       <%
 
        String xmat="", xnom="", xfot="",xtur="",xema="";
		
        String num = request.getParameter("escolhematricula");
        
	try
    	{
 			
    	if(Bancosql.procurar(num))
    	{
			    xmat=Bancosql.getmat();
			    xnom=Bancosql.getnome();
				xema=Bancosql.getemail();
				xfot=Bancosql.getfoto();
				xtur=Bancosql.gettur();
		}
		else
		{
                  xmat="vazio";
                  xnom="vazio";
		}
		
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


<form action="alteraexclui.jsp" method="post">
<font color="#000">
<b>-- Alterar / Excluir ----</b>


	<table width="200" border="0" align="center">
	<tr>
		<td height="40">Matricula:</td>
		<td><input type="text" name="matricula" readonly="readonly" value="<%out.print(xmat);%>" />
		</td>
		
	</tr>
	<tr>
		<td height="40">Nome:</td>
		<td><input type="text" name="nome" value="<%out.print(xnom);%>"/>
		</td>
       
	</tr>
	
	<tr>
		<td height="40">Email:</td>
		<td><input type="text" name="email" value="<%out.print(xema);%>"/>
		</td>
       
	</tr>
	
	
	<tr>
	<td height="40">Turma:</td>
        <td>
		<select name="turma" id="turma" >
			<option value="73A" <%if(xtur.equals("73A")) out.print("selected");%>  >73A</option>
			<option value="73B" <%if(xtur.equals("73B")) out.print("selected");%>  >73B</option>
			<option value="73C" <%if(xtur.equals("73C")) out.print("selected");%>  >73C</option>
		</select>
	    </td>
	</tr>
	
	
	<tr>
	    <td height="40">Foto:</td>
		<td>
		
		<img src="<%out.print(xfot);%>" width="100" >
		
 		<input type="text" name="txtfoto" value="<%out.print(xfot);%>" readonly/>
	    
		</td>
		<td>	    
		   <input type="file" size="50" name="foto" title="Clique aqui para procurar arquivo" onchange="updateFilename(this.value)" >
		   <p>The name of the file you picked is: <span id="filename">(none)</span></p>
			<script>
			function updateFilename(path) {
				var name = extractFilename(path);
				document.getElementById('filename').textContent = name;
			}
			</script>
		
		
		</td> 
		<td>
			
 		<input type="text" name="txtfoto" value="<%out.print(xfot);%>" readonly/>
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