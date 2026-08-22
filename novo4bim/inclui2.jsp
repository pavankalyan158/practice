<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<link rel="icon" href="imagens/jogador.png" type="image/png" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>:: Cadastro Incluir ::</title>


   <%@page import="java.sql.*" %>    
   <%@page import="javax.swing.*" %>
       	
<style type="text/css">
   body{padding:20px; font-size:14px; color:#000000; font-family:Arial, Helvetica, sans-serif;}
   h2 {font-weight:bold; color:#000; margin:10px 0px; }
   p span {color:#006600; font-weight:bold; }
   a, a:link, a:visited {color:#0000FF;}
   textarea {width: 100%; padding: 10px; margin: 10px 0 15px 0; font-size: 13px; font-family: Consolas,monospace;}
   textarea.html {height: 300px;}
   p {margin: 0 0 10px 0;}
   code, pre {font-family: Consolas,monospace; color: green;}
   ol li {margin: 0 0 15px 0;}
</style>

</head>

<body>

<h2>Trabalho 4º Bim Cadastro Web </h2>

<style type="text/css">#cssmenu ul,
#cssmenu li,
#cssmenu span,
#cssmenu a {
  margin: 0;
  padding: 0;
  position: relative;
}
#cssmenu {
  height: 49px;
  border-radius: 5px 5px 0 0;
  -moz-border-radius: 5px 5px 0 0;
  -webkit-border-radius: 5px 5px 0 0;
  background: #141414;
  background: -moz-linear-gradient(top, #32323a 0%, #141414 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #32323a), color-stop(100%, #141414));
  background: -webkit-linear-gradient(top, #32323a 0%, #141414 100%);
  background: -o-linear-gradient(top, #32323a 0%, #141414 100%);
  background: -ms-linear-gradient(top, #32323a 0%, #141414 100%);
  background: linear-gradient(to bottom, #32323a 0%, #141414 100%);
  filter: progid:DXImageTransform.Microsoft.Gradient(StartColorStr='#32323a', EndColorStr='#141414', GradientType=0);
  border-bottom: 2px solid #e00f16;
}
#cssmenu:after,
#cssmenu ul:after {
  content: '';
  display: block;
  clear: both;
}
#cssmenu a {
  background: #141414;
  background: -moz-linear-gradient(top, #32323a 0%, #141414 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #32323a), color-stop(100%, #141414));
  background: -webkit-linear-gradient(top, #32323a 0%, #141414 100%);
  background: -o-linear-gradient(top, #32323a 0%, #141414 100%);
  background: -ms-linear-gradient(top, #32323a 0%, #141414 100%);
  background: linear-gradient(to bottom, #32323a 0%, #141414 100%);
  filter: progid:DXImageTransform.Microsoft.Gradient(StartColorStr='#32323a', EndColorStr='#141414', GradientType=0);
  color: #ffffff;
  display: inline-block;
  font-family: Helvetica, Arial, Verdana, sans-serif;
  font-size: 12px;
  line-height: 49px;
  padding: 0 20px;
  text-decoration: none;
}
#cssmenu ul {
  list-style: none;
}
#cssmenu > ul {
  float: left;
}
#cssmenu > ul > li {
  float: left;
}
#cssmenu > ul > li:hover:after {
  content: '';
  display: block;
  width: 0;
  height: 0;
  position: absolute;
  left: 50%;
  bottom: 0;
  border-left: 10px solid transparent;
  border-right: 10px solid transparent;
  border-bottom: 10px solid #e00f16;
  margin-left: -10px;
}
#cssmenu > ul > li:first-child a {
  border-radius: 5px 0 0 0;
  -moz-border-radius: 5px 0 0 0;
  -webkit-border-radius: 5px 0 0 0;
}
#cssmenu > ul > li:last-child a {
  border-radius: 0 5px 0 0;
  -moz-border-radius: 0 5px 0 0;
  -webkit-border-radius: 0 5px 0 0;
}
#cssmenu > ul > li.active a {
  box-shadow: inset 0 0 3px #000000;
  -moz-box-shadow: inset 0 0 3px #000000;
  -webkit-box-shadow: inset 0 0 3px #000000;
  background: #070707;
  background: -moz-linear-gradient(top, #26262c 0%, #070707 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #26262c), color-stop(100%, #070707));
  background: -webkit-linear-gradient(top, #26262c 0%, #070707 100%);
  background: -o-linear-gradient(top, #26262c 0%, #070707 100%);
  background: -ms-linear-gradient(top, #26262c 0%, #070707 100%);
  background: linear-gradient(to bottom, #26262c 0%, #070707 100%);
  filter: progid:DXImageTransform.Microsoft.Gradient(StartColorStr='#26262c', EndColorStr='#070707', GradientType=0);
}
#cssmenu > ul > li:hover > a {
  background: #070707;
  background: -moz-linear-gradient(top, #26262c 0%, #070707 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #26262c), color-stop(100%, #070707));
  background: -webkit-linear-gradient(top, #26262c 0%, #070707 100%);
  background: -o-linear-gradient(top, #26262c 0%, #070707 100%);
  background: -ms-linear-gradient(top, #26262c 0%, #070707 100%);
  background: linear-gradient(to bottom, #26262c 0%, #070707 100%);
  filter: progid:DXImageTransform.Microsoft.Gradient(StartColorStr='#26262c', EndColorStr='#070707', GradientType=0);
  box-shadow: inset 0 0 3px #000000;
  -moz-box-shadow: inset 0 0 3px #000000;
  -webkit-box-shadow: inset 0 0 3px #000000;
}
#cssmenu .has-sub {
  z-index: 1;
}
#cssmenu .has-sub:hover > ul {
  display: block;
}
#cssmenu .has-sub ul {
  display: none;
  position: absolute;
  width: 200px;
  top: 100%;
  left: 0;
}
#cssmenu .has-sub ul li {
  *margin-bottom: -1px;
}
#cssmenu .has-sub ul li a {
  background: #e00f16;
  border-bottom: 1px dotted #ec6f73;
  filter: none;
  font-size: 11px;
  display: block;
  line-height: 120%;
  padding: 10px;
}
#cssmenu .has-sub ul li:hover a {
  background: #b00c11;
}
#cssmenu .has-sub .has-sub:hover > ul {
  display: block;
}
#cssmenu .has-sub .has-sub ul {
  display: none;
  position: absolute;
  left: 100%;
  top: 0;
}
#cssmenu .has-sub .has-sub ul li a {
  background: #b00c11;
  border-bottom: 1px dotted #d06d70;
}
#cssmenu .has-sub .has-sub ul li a:hover {
  background: #80090d;
}
</style>
<div id='cssmenu'>
<ul>
   <li><a href='index.html'><span>Home</span></a></li>
   <li class='has-sub '><a href='#'><span>Cadastro</span></a>
      <ul>
         <li class='has-sub '><a href='inclui.html'><span>Incluir</span></a>
  
         </li>
         <li class='has-sub '><a href='altera.jsp'><span>Alterar / Excluir</span></a>

         </li>
         <li class='has-sub '><a href='todos.jsp'><span>Consulta todos</span></a>

         </li>
      </ul>
   </li>
   <li><a href='sobre.html'><span>Sobre</span></a></li>
   <li><a href='relatorio.html'><span>Relatórios</span></a></li>
</ul>
</div>
<div style="clear:both; margin: 0 0 30px 0;"></div>
<center>

<script type="text/javascript">
function validar()
{    

 var xmat =fentrada.xmat.value+"";
 var xnom = fentrada.xnome.value+""; 
 
  if(xmat!="")
  {
     <%String something=""+document.getElementById("xmatricula");
     
      JOptionPane.showMessageDialog(null,""+something);
     %>
 }   
 
 if (xmat == "") {    
        alert('Preencha o campo matricula');    
        fentrada.xmatricula.focus();    
        return false;  
  } 

 if (xnom == "") {    
        alert('Preencha o campo nome');    
        fentrada.xnome.focus();    
        return false;  
 } 
 document.forms[0].submit();  
   
}  
</script>

<form name="fentrada" method="post">
<font color="#000">

<b><n> ------------------------------------------------------ Cadastrar  ------------------------------------------------------</n></b>

<table width="200" border="0" align="center">
	
	<tr>
		<td height="40">Matricula:</td>
		<td><input type="text" id="xmatricula" value=""/></td>
       
	</tr>
	<tr>
		<td height="40">Nome:</td>
		<td><input type="text" id="xnome" value="" /></td>
	</tr>
	
   
</table>
	<input type="submit" value="Gravar" onclick="validar()"/> 

</font>
<br>
<br>
</form>

<CENTER><b>
<font color="#000">
 CTI - Colégio Técnico Industrial - Professor Isaac Roldan<p> </font>
 <font color="#FF0000" style='font-weight:bold;'>
 __________________________________________________________________
 </b></font></p>
</CENTER>



</center>
</body>
</html>