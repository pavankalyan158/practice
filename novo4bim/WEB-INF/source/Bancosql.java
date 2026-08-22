//colocar este arquivo na pasta 
//C:\apache-tomcat-6.0.29\webapps\4bimjsp\WEB-INF\classes
package database;

import java.sql.*;
import javax.swing.*;
import java.util.*;//arraylist

public class Bancosql
{
    private static Connection con;
    private static PreparedStatement ps;  
    private static Statement st;
    private static ResultSet rs;
    	
    private static String url,usuario,senha;
    private static String sql,mat,nome,tur,foto,email;
    
    
     private Bancosql()
     { }
    //setsssssssss
    public static void setmat(String m)
    { mat=m;
    }	
    
    public static void setnome(String n)
    { nome=n;
    }	
    
    public static void settur(String t)
    { tur=t;
    }	
    
    public static void setemail(String e)
    { email=e;
    }	
    	
    public static void setfoto(String e)
    { foto=e;
    }	
    	
    //getsssssssssssssssssss
    public static String getmat()
    {  return mat;
    }		
    	
    public static String getnome()
    {  return nome;
    }	
    
    public static String gettur()
    {  return tur;
    }
    
    public static String getemail()
    {  return email;
    }
    public static String getfoto()
    { return foto;
    }
    
    public static boolean procurar(String xmat)
    {
    	sql="select * from alunos where matricula=?";
    	try
    	{
    		conecta();
    	  ps=con.prepareStatement(sql);
   		  ps.setString(1,xmat);
    	  rs=ps.executeQuery();
    	  if(rs.next())
          { setmat(rs.getString("matricula"));
            setnome(rs.getString("nome"));
            settur(rs.getString("turma"));
            setfoto(rs.getString("foto"));
            setemail(rs.getString("email"));
            desconecta(); 
    		return true;
          }
    	}catch(Exception errp)
   	    {
   		JOptionPane.showMessageDialog(null,"Erro Procura:"+errp);
	 	}
	 	return false;
    }	
    
    public static void incluir()
    {
   	sql="insert into alunos(matricula,nome,turma,email,foto) values(?,?,?,?,?)";
   	try{
   		conecta();
   		ps=con.prepareStatement(sql);
   		ps.setString(1,mat);
   		ps.setString(2,nome);
   		ps.setString(3,tur);
   		ps.setString(4,email);
   		ps.setString(5,foto);
   		ps.execute();
   		desconecta();
   		JOptionPane.showMessageDialog(null,"Sucesso inclusao!");
	
   	}catch(Exception erri)
   	    {
   		JOptionPane.showMessageDialog(null,"Erro Inclusao:"+erri);
	 	}
   	
    }
    
    public static void excluir()	
    {
    	sql="delete from alunos where matricula=?";
    	try{
    		conecta();
   		ps=con.prepareStatement(sql);
   		ps.setString(1,mat);
   		ps.execute();
   		desconecta();
   		JOptionPane.showMessageDialog(null,"Sucesso exclusao!");
	
   	}catch(Exception erre)
   	    {
   		JOptionPane.showMessageDialog(null,"Erro Exclusao:"+erre);
	 	}
    }//excluirrrrrrrrrrrrrrrr	
    	
    public static void alterar()
    {
    	sql="update alunos set nome=?, turma=?, email=?, foto=? where matricula=?";
    	try{
    		conecta();
   		ps=con.prepareStatement(sql);
   		ps.setString(5,mat);
   		ps.setString(1,nome);
   		ps.setString(2,tur);
   		ps.setString(3,email);
   		ps.setString(4,foto);
   		ps.execute();
   		desconecta();
   		JOptionPane.showMessageDialog(null,"Sucesso Alteração!");
	
   	}catch(Exception erra)
   	    {
   		JOptionPane.showMessageDialog(null,"Erro Alteração:"+erra);
	 	}
    }//alterarrrrrrrrrrrr		
    public static ArrayList pegadados()
    {
    	ArrayList dados;
    	sql="select * from alunos";
    	dados=new ArrayList();
    	try
    	{
          conecta();
    	  st=con.createStatement();
    	  rs=st.executeQuery(sql);
    	  while(rs.next())
          {
    		mat=rs.getString("matricula");
    		nome=rs.getString("nome");
    		tur=rs.getString("turma");
    		email=rs.getString("email");
    		foto=rs.getString("foto");
    		dados.add(mat);
    		dados.add(nome);
    		dados.add(tur);
    		dados.add(email);
    		dados.add(foto);
    	  }//while	
    	  desconecta();
    	}//try
    	catch(Exception erro)
    	{
    		JOptionPane.showMessageDialog(null,"erro leitura banco:"+erro);	
    	}
    	return dados;
    }///opegadadosssssssssss		
    	
    private static void conecta()//construtor
    {
  		try {
			Class.forName("org.postgresql.Driver");
			usuario="postgres";
      		senha="postgres";
      		//drive="org.postgresql.Driver";
      		url="jdbc:postgresql://localhost:5432/bancocti";
            con = DriverManager.getConnection(url, usuario, senha);  
	   		//JOptionPane.showMessageDialog(null,"ok conectou!");
		}catch (Exception e) {
			JOptionPane.showMessageDialog(null,"Erro Conexao:"+e);
		} 
	}//construtor

    private static void desconecta()
    {
  		try {
  			con.close();
  			}catch (Exception e) {
			JOptionPane.showMessageDialog(null,"Erro Conexao:"+e);
		} 
	}//construtor


	public  static void main(String xx[])
	{
		new Bancosql();
	}//main
    
}//class bancosql