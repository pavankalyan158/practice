<html>
<body>
       <%-- comentário em JSP aqui: nossa primeira página JSP --%>
       <%
         String mensagem = "Bem vindo ao sistema de agenda do CASTRO";
         String desenvolvido = "Desenvolvido por (EU)";
         out.println(mensagem); %> 
         <br />
       <%=desenvolvido         %> 
         <br />
       <%@page import="java.sql.*" %>    
       <%@page import="javax.swing.*" %>
       <%
         JOptionPane.showMessageDialog(null,"vai");

          out.println("Tudo foi executado!");
         int j=0;
         for(j=0;j<10;j++) out.println("contando="+j+"<br>");
        Connection con;
        Statement stmt;
        ResultSet rs;
    
	try
    	{
    		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    		con=DriverManager.getConnection("jdbc:odbc:bancohtml","Admin","");
    		stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			rs=stmt.executeQuery("Select * from alunos");
    		
    		
    		if(rs.next()==true)
    		{
    		   	while(true)
    		   	{
    		   		out.println("Matricula= "+rs.getInt("matricula")+"- Nome: "+rs.getString("nome")+"<br />" );
    		   		if(rs.next()==false)break;
    		   	}//while
    		}
    		else
    		{
    			out.println("tabela vazia <br >");
    		}    
           con.close();
         }//try
    	catch(Exception e)
    	{
    		out.println("ERRO="+e);
    	}//catch
        %>
</body>
</html>