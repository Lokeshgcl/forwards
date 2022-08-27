<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jsp Forwards</title>
<body>
	<h2>Jsp request forward</h2>

	<% String reqParam = request.getParameter("requestParameter");
	
	if(reqParam!=null){		
		int rParam = Integer.parseInt(reqParam);
		if(rParam < 10){ %>
	<jsp:forward page="page1.jsp" />
	<% } else if(rParam > 10 && rParam < 99){
	%>
	<jsp:forward page="page2.jsp" />

	<%  } else { %>
	<jsp:forward page="errorpage.jsp" />
	<% 
	}
	}
	
	%>

	<form name="loginForm" action="#" method="post"
		onsubmit="return validateLogin()">
		<table style="with: 50%">
			<tr>
				<td>Request Parameter</td>
				<td><input type="text" name="requestParameter" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>

	</form>
</body>
</html>
