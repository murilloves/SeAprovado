<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado do seu IMC</title>
</head>

	<%
		String varName = request.getParameter("nome");
		double varFreq = Double.parseDouble(request.getParameter("freq"));
		double varGrades = Double.parseDouble(request.getParameter("nota"));
	%>

<body>
	<h4>
		<%= varName + ", sua nota é: "+ varGrades%>
		<%= " e sua frequência foi de "+ varFreq +"%, portanto:"%>
		<br>
	</h4>

	<h3><%
	if(varGrades < 6){
		if (varFreq < 75){
			out.println("Reprovado por média e frequência");
		} else if (varFreq >= 75){
			out.println("Reprovado por média");
		}
	}

	if(varGrades >= 6){
		if (varFreq < 75){
			out.println("Reprovado por frequência");
		} else {
			out.println("Aprovado");
		}
	}
	%> </h3>

</body>
</html>