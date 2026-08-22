<html>

<body background="fusca.jpg">

       <%-- coment�rio em JSP aqui: nossa primeira p�gina JSP --%>
    
       <%@page import="java.sql.*" %>    
       <%@page import="javax.swing.*" %>
	   
		<%@page import="java.io.*" %>
		<%@page import="javax.servlet.*" %>
		<%--@page import="javax.swing.JFileChooser" --%>
		<%--@page import="javax.swing.filechooser.FileFilter" --%>

		<%--@page import="java.io.File" --%>
		<%--@page import="java.io.FileInputStream" --%>
		<%--@page import="java.io.FileOutputStream" --%>
		<%--@page import="java.io.InputStream" --%>
		<%--@page import="java.nio.ByteBuffer" --%>
		<%--@page import="java.nio.channels.FileChannel" --%>

       <%
	    
		String marca = request.getParameter("marca");
		String modelo = request.getParameter("modelo");
		String preco = request.getParameter("preco");
		Float p = Float.parseFloat(preco);
		String motor = request.getParameter("motor");
		String categoria = request.getParameter("categoria");
		Integer c = Integer.parseInt(categoria);
		String imagem = request.getParameter("imagem");
		// Part a = request.getPart("imagem");
		
		
		bancosql bsql= new bancosql();
		bsql.setMarca(marca);
		bsql.setModelo(modelo);
		bsql.setPreco(p);
		bsql.setMotor(motor);
		bsql.setIdcategoria(c);
		bsql.setImagem(imagem);
		bsql.incluirCarro();
		
		/*File arquivo = imagem;
		
		try {
					String l = arquivo.getAbsolutePath(); // De onde vem a imagem
					FileInputStream fisDe = new FileInputStream(l);
					
					String i = "./imagens/"+txtfoto.getText()+""; // Para onde vai a imagem
					FileOutputStream fisPara = new FileOutputStream(i);
		
					FileChannel fcPara = fisDe.getChannel();
					FileChannel fcDe = fisPara.getChannel();
					
					if( fcPara.transferTo(0, fcPara.size(), fcDe ) == 0L ) { // Transferência
						fcPara.close();
						fcDe.close();
					}
					
					arquivo = null;
					
			   } catch (Exception e) {

				   JOptionPane.showMessageDialog(null, "Erro de Transferência:"+e );

			   }*/

         %>
		<br>

<center>
<form action="cadastrarCarro.jsp" method="get">

<font color="#000">
<b><n> ------------------------------------------------------ Cadastrar  ------------------------------------------------------</n></b>
<br>
<br>
<br>
<br>
<br>
<br>
<font color="#FF0000" style='font-weight:bold;'>
Carro <%-- out.print(modelo);  --%> adicionado com sucesso! <input 

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