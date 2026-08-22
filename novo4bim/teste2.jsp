<%@page contentType="text/html"%>
<html>
<head>
  <title>
  Pagina JSP 
  </title>
  <%
	String a = "COLEGIO TECNICO INDUSTRIAL";
	out.println("<h1>"+a+"</h1>\n andre luiz <br>");
	for(int i=0; i<100; i++) 
	out.print("valor="+i+"<br>");
  %>
  <form Name = "form1">
   Nome:<INPUT TYPE="text" NAME="teste" VALUE="" SIZE="30" MAXLENGTH="20">
   <br>
   <INPUT TYPE="Button" NAME="btn1" VALUE="OK">
   
   <br>
   Masculino:<INPUT TYPE="radio" NAME="br" VALUE="1" >
   Feminino: <INPUT TYPE="radio" NAME="br" VALUE="2" Checked>

   <br>
   Curso <br>
   Java : <INPUT TYPE="Checkbox" NAME="ch" VALUE="1">
   HTML :<INPUT TYPE="Checkbox" NAME="ch" VALUE="2">

   <br>
   <br>
   <Select Name ="cargo">
   <Option>Programador Junior
   <Option selected>Programador Senior
   <Option>Programador Pleno
   </Select>
   <br>
   
   <Textarea rows=5 cols=30 Name=dados></textarea>
   
  </form>

</head>
</html>

