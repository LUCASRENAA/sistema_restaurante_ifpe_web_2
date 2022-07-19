<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Cadastre novas formas de pagamento</h1>

  <form method="post" action="/formaPagamento/cadastro">

           

                <input type="text" class="login_input" placeholder="Descrição" name="descricao">
                <span class="login_border"></span>
                
             


		<input type = "submit" value="cadastrar"/>
            </form>

${msg}
</body>
</html>