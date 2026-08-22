//colocar este arquivo na pasta work que nao existe no inicio

//colocar este arquivo na pasta C:\apache-tomcat-6.0.29\work\Catalina\localhost\castro2017
package org.apache.jsp;
import java.sql.*;
import javax.swing.*;
import java.util.*;//arraylist

class bancosql
{
    private Connection con;
    private PreparedStatement ps;  
    private Statement st;
    private ResultSet rs;
    	
    private String url,usuario,senha;
    private String sql,mat,nome,tur,foto,email;
    //setsssssssss
    public void setmat(String m)
    { mat=m;
    }	
    
    public void setnome(String n)
    { nome=n;
    }	
    
    public void settur(String t)
    { tur=t;
    }	
    
    public void setemail(String e)
    { email=e;
    }	
    	
    public void setfoto(String e)
    { foto=e;
    }	
    	
    //getsssssssssssssssssss
    public String getmat()
    {  return mat;
    }		
    	
    public String getnome()
    {  return nome;
    }	
    
    public String gettur()
    {  return tur;
    }
    
    public String getemail()
    {  return email;
    }
    public String getfoto()
    { return foto;
    }
    
    public boolean procurar(String xmat)
    {
    	sql="select * from tabela where pkmatricula=?";
    	try
    	{
    	  ps=con.prepareStatement(sql);
   		  ps.setString(1,xmat);
    	  rs=ps.executeQuery();
    	  if(rs.next())
          { setmat(rs.getString(1));
            setnome(rs.getString(2));
            settur(rs.getString(3));
            setfoto(rs.getString(4));
            setemail(rs.getString(5)); 
    		return true;
          }
    	}catch(Exception errp)
   	    {
   		JOptionPane.showMessageDialog(null,"Erro Procura:"+errp);
	 	}
	 	return false;
    }	
    
    public void incluir()
    {
   	sql="insert into tabalunos(pkmatricula,nome,turma,email,foto) values(?,?,?,?,?)";
   	try{
   		ps=con.prepareStatement(sql);
   		ps.setString(1,mat);
   		ps.setString(2,nome);
   		ps.setString(3,tur);
   		ps.setString(4,email);
   		ps.setString(5,foto);
   		ps.execute();
   		JOptionPane.showMessageDialog(null,"Sucesso inclusao!");
	
   	}catch(Exception erri)
   	    {
   		JOptionPane.showMessageDialog(null,"Erro Inclusao:"+erri);
	 	}
   	
    }
    
    public void excluir()	
    {
    	sql="delete from tabalunos where pkmatricula=?";
    	try{
   		ps=con.prepareStatement(sql);
   		ps.setString(1,mat);
   		ps.execute();
   		JOptionPane.showMessageDialog(null,"Sucesso exclusao!");
	
   	}catch(Exception erre)
   	    {
   		JOptionPane.showMessageDialog(null,"Erro Exclusao:"+erre);
	 	}
    }//excluirrrrrrrrrrrrrrrr	
    	
    public void alterar()
    {
    	sql="update tabalunos set nome=?, turma=?, email=?, foto=? where pkmatricula=?";
    	try{
   		ps=con.prepareStatement(sql);
   		ps.setString(5,mat);
   		ps.setString(1,nome);
   		ps.setString(2,tur);
   		ps.setString(3,email);
   		ps.setString(4,foto);
   		ps.execute();
   		JOptionPane.showMessageDialog(null,"Sucesso Alteração!");
	
   	}catch(Exception erra)
   	    {
   		JOptionPane.showMessageDialog(null,"Erro Alteração:"+erra);
	 	}
    }//alterarrrrrrrrrrrr		
    public ArrayList pegadados()
    {
    	ArrayList dados;
    	sql="select * from tabela";
    	dados=new ArrayList();
    	try
    	{
    	  st=con.createStatement();
    	  rs=st.executeQuery(sql);
    	  while(rs.next())
          {
    		mat=rs.getString("pkmatricula");
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
    	}//try
    	catch(Exception erro)
    	{
    		JOptionPane.showMessageDialog(null,"erro leitura banco:"+erro);	
    	}
    	return dados;
    }///opegadadosssssssssss		
    	
   	
    	
    	
    	
    	
    public bancosql()//construtor
    {
  		try {
			Class.forName("org.postgresql.Driver");
			
			usuario="postgres";
      		senha="sqladmin";
      		//drive="org.postgresql.Driver";
      		url="jdbc:postgresql://localhost:5432/alunos";
            con = DriverManager.getConnection(url, usuario, senha);  
	   		JOptionPane.showMessageDialog(null,"ok conectou!");
		}catch (Exception e) {
			JOptionPane.showMessageDialog(null,"Erro Conexao:"+e);
		} 
	}//construtor

	public  static void main(String xx[])
	{
		new bancosql();
	}//main
    
}//class bancosql