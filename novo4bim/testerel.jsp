   <%@page import="java.sql.*" %>    
   <%@page import="javax.swing.*" %>
   <%@page import="java.util.*" %>
   <%@page import="java.io.*" %>
   <%@page import="net.sf.jasperreports.engine.*"%>
   <%@page import="net.sf.jasperreports.extensions.*"%>
   <%@page import="net.sf.jasperreports.view.JasperViewer"%>

<html>
<body>
       <%-- comentário em JSP aqui: nossa primeira página JSP --%>
       
       <%
   
          String alt = request.getParameter("ao");
         String mensagem = "Relatorio web por "+alt;
         out.println(mensagem); %> 
         <br />

    
         <br />

       <%
         JasperReport jasperR;
         JasperPrint jasperP;
         JRResultSetDataSource jrRS;
         Map parametros;
        

        Connection con;
        Statement stmt;
        ResultSet rs;
    
	     try
    	{
    		Class.forName("org.postgresql.Driver");
			String usuario="postgres";
      		String senha="postgres";
      		
      		String url="jdbc:postgresql://localhost:5432/bancocti";
    	
    		con=DriverManager.getConnection(url,usuario,senha);
    		stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

    		   //aqui ok jasperview
		    if(alt.equals("matricula"))
     		   	 rs=stmt.executeQuery("Select * from alunos");
           	 else
                	rs=stmt.executeQuery("Select * from alunos order by nome ");


			jrRS = new JRResultSetDataSource( rs );
            parametros = new HashMap();
                

            JasperPrint impressao = JasperFillManager.fillReport( "C:\\apache-tomcat-6.0.29\\webapps\\novo4bim\\report1.jasper" , parametros,    jrRS );
 		    //exibe o resultado
		    JasperViewer viewer = new JasperViewer( impressao , false );
		    viewer.show();

	
            //fechando o banco
    		con.close();
    		stmt.close();
    		
    		
         }//try
    	catch(Exception e)
    	{
    		JOptionPane.showMessageDialog(null,"ERRO="+e);
    		
    	}//catch
     
        %>

   <script language='javascript'>
  alert('FIM DO RELATORIO');
  location.href='http://localhost:8080/novo4bim/relatorio.html'
  </script>
</body>
</html>