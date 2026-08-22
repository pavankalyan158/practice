<html>

<body background="unesp.jpg" style="background-color:#594E36">

       <%@page import="java.sql.*" %>    
       <%@page import="javax.swing.*" %>


<head>
<link rel="icon" href="unesp.png" type="image/jpg" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>:: Alterar / Excluir::</title>
</head>

<center>
<form action="altera_moto.jsp" method="get">
<font color="#FFFFFF" style="background-color:#594E36">
<b><n> ------------------------------------------------------ Cadastrar  ------------------------------------------------------</n></b>
<br>
<br>
<br>
<br>
<br>
<br>
			<font color="#FF0000" style='font-weight:bold;'>
			<%

   			String placa = request.getParameter("placa");
   			String marca = request.getParameter("marca");
			String modelo = request.getParameter("modelo");
			String obs = request.getParameter("obs");
			String foto = request.getParameter("foto");
			String txtfoto =request.getParameter("txtfoto");
			JOptionPane.showMessageDialog(null,"foto escolhida"+foto);
			JOptionPane.showMessageDialog(null,"foto txt"+txtfoto);
			
			if(foto.length()==0)foto=txtfoto;
			 
   			String altexc = request.getParameter("altexc");
   			JOptionPane.showMessageDialog(null,""+altexc);
  	 
        	bsql_moto bsql=new bsql_moto();
			bsql.connect();
			if(altexc.equals("excluir")){
				
				
			  // bsql.setPlaca_moto(placa);
			   //bsql.excluir();
			
			out.println("\n Dados " + placa + " Excluidos com sucesso !");
   			
			}else
			{
			    bsql.setPlaca_moto(placa);
				bsql.setMarca_moto(marca);
				bsql.setModelo_moto(modelo);
				bsql.setObs_moto(obs);
				bsql.setFoto_moto(foto);
			   //bsql.alterar_moto();
			   bsql.incluir_moto();
					

				
			out.println("\n Dados " + placa + " Alterados com sucesso !");
   				
			}
      			
				 
			%>
 <input type="submit" name="teste" value="Continuar Alterando ou Excluindo >" align="top" /><br>

<br>
<br>

</form>

</center>
</body>
</html>