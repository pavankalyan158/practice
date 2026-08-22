<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body background="fusca.jpg">
		<%@page import="java.sql.*" %>    
		<%@page import="javax.swing.*" %>
		<%@page import="java.util.*" %>
		
		<% bancosql bsql = new bancosql(); %>
<center>

<form action="salvarCarro.jsp" method="post">
	<font color="#000">
		<b><n> ------------------------------------------------------ Cadastrar Carro ------------------------------------------------------</n></b>
		<table width="200" border="0" align="center">
		
			<tr>
				<td height="40">Id:</td>
				<td><input type="text" name="id" size="35" value="<% out.println(bsql.retornarIdCategoria("carro_id_carro_seq")); %>" required disabled/></td>
			</tr>
			<tr>
				<td height="40">Marca:</td>
				<td><input type="text" name="marca" size="35" value="" required /></td>
			</tr>
			<tr>
				<td height="40">Modelo:</td>
				<td><input type="text" name="modelo" size="10" value="" required/></td>
			</tr>
			<tr>
				<td height="40">Preço:</td>
				<td><input type="text" name="preco" size="10" value="" required/></td>
			</tr>
			<tr>
				<td height="40">Motor:</td>
				<td><input type="text" name="motor" size="10" value="" required /></td>
			</tr>
			<tr>
				<td height="40">Categoria:</td>
				<td>
				
			   <select name="categoria" id="categoria" required>
				   <% 
				   try{
					// bancosql bsql = new bancosql();
					String id, nome;	
					ArrayList vetor=new ArrayList();	
					vetor=bsql.pegaDadosCategoria();
					if(!vetor.isEmpty())
					{
						for(int i=0; i<vetor.size(); i++)
						{
						   id=""+vetor.get(i);
						   i++;
						   nome=""+vetor.get(i);
					%>
					<br>
					<option size="20dp" value="<%out.print(id);%>" name="nome"><%out.print(nome);%></option>
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
				</td>
			</tr>
			<tr>
				<td height="40">Imagem:</td>
				<td>
					<input type="file" name="imagem" size="20" accept="image/jpg/bmp" value="" required>
				</td>
			</tr>
		</table>

		<input type="submit" name="teste" value="Enviar" align="top" />
		
	</font>
</form>

</center>
</body>
</html>