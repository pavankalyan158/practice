<%@page language="Java" import="java.sql.*" %>    
<%@page language="Java" import="javax.swing.*" %>
<%@page language="Java" import="database.Bancosql"%>
<%@page language="Java" import="java.util.*" %>
<html>

<body background="unesp.jpg">
<head>
<link rel="icon" href="unesp.png" type="image/jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: Alterar / Excluir::</title>
</head>

<center>
<form action="altera.jsp" method="get">
<font color="#000">
<b><n> ------------------------------------------------------ Cadastrar  ------------------------------------------------------</n></b>
<br>
<br>
<br>
<br>
<br>
<br>
			<font color="#FF0000" style='font-weight:bold;'>
			<%

   			String matricula = request.getParameter("matricula");
   			String nome = request.getParameter("nome");
			String turma = request.getParameter("turma");
			String email = request.getParameter("email");
			String foto = request.getParameter("foto");
			String txtfoto =request.getParameter("txtfoto");
			JOptionPane.showMessageDialog(null,"foto escolhida"+foto);
			JOptionPane.showMessageDialog(null,"foto txt"+txtfoto);
			
			if(foto.length()==0)foto=txtfoto;
			 
   			String altexc = request.getParameter("altexc");
   			JOptionPane.showMessageDialog(null,""+altexc);
  	 
        	if(altexc.equals("excluir")){
				
				
			   Bancosql.setmat(matricula);
			   Bancosql.excluir();
			
			out.println("\n Dados " + nome + " Excluidos com sucesso !");
   			
			}else
			{
			    Bancosql.setmat(matricula);
				Bancosql.setnome(nome);
				Bancosql.setemail(email);
				Bancosql.settur(turma);
				Bancosql.setfoto(foto);
			    Bancosql.alterar();
					

				
			out.println("\n Dados " + nome + " Alterados com sucesso !");
   				
			}
      			
				 
			%>
 <input type="submit" name="teste" value="Continuar Alterando ou Excluindo >" align="top" /><br>

<br>
<br>

</form>

</center>
</body>
</html>