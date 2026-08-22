
<%@page language="Java" import="java.sql.*" %>    
<%@page language="Java" import="javax.swing.*" %>
<%@page language="Java" import="database.Bancosql"%>

<html>

<body background="unesp.jpg">
       <%-- coment�rio em JSP aqui: nossa primeira p�gina JSP --%>
       <%
		String nome = request.getParameter("nome");
		String matricula = request.getParameter("matricula");
		String turma = request.getParameter("turma");
		String email = request.getParameter("email");
		String foto = request.getParameter("foto");
		
		JOptionPane.showMessageDialog(null,"ok"+nome+"-"+turma+"-"+email+"-"+matricula+"-"+foto);
	  
	   	Bancosql.setmat(matricula);
		Bancosql.setnome(nome);
		Bancosql.settur(turma);
		Bancosql.setemail(email);
		Bancosql.setfoto(foto);
		Bancosql.incluir();
         %>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<form action="cadastrar.html" method="get">

<font color="#000">
<b><n> -- Cadastrar novos  ------------------------------------------------------</n></b>
<br>
<br>
<br>
<font color="#FF0000" style='font-weight:bold;'>
Dados do <% out.print(nome);  %> adicionado com sucesso! <input 

type="submit" name="teste" value="Continuar Cadastrando >" align="top" /><br>


<br>
<br>
<br>
<br>
<br>
<br>
</form>

</center>

</body>
</html>