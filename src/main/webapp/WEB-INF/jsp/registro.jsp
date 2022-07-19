<!DOCTYPE html>
<html lang="en">
<head>

    <!--

    https://github.com/RaphaelAlcantara/formulario-Front

     -->
     
       <style>
     /*Variaveis*/
:root{
    --input-linear: linear-gradient(120deg, #000000, #00c2cb);
    --button-linear: linear-gradient(120deg, #000000, #51e8f1,#FF92BFFF);
    --border-height: 1px;
    --input-error: rgb(18,151,107);
    --button-disabled: #000000 ;
    --button-success: rgb(18,151,107);
}

body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
}

.login{
    height: 100vh;
    background: var(--input-linear);
    display: flex;
    justify-content: center;
    align-items: center;
}

.login_container{
    min-height: 400px;
    width: 300px;
    background-color:white;
    box-sizing: border-box;
    padding: 32px;
    border-radius: 8px;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.login_title{
    margin-bottom:32px;
    color:#303030
}

.login_form{
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.login_input{
    height:48px;
    width:100%;
    box-sizing: border-box;
    padding:8px;
    border:unset;
    outline:none;
}

.login_border{
    height:var(--border-height);
    width:100%;
    margin:16px;
    background-color:#cfcfcf;
    transition: .3s ease-in;
}

.login_border::after{
    height: var(--border-height);
    content: '';
    display: block;
    width: 0;
    margin-bottom: 16px;
    background: var(--input-linear);
    transition: .3s ease-in-out;
}
/*Efeito da linha embaixo do input*/
.login_input:focus + .login_border::after{
    width: 100%;
}

.login_border.error{
    background: var(--input-error);
}

.login_submit{
    height:48px;
    width:100%;
    outline:none;
    background: var(--button-linear);
    background-size:200%;
    margin-bottom: 32px;
    color: white;
    font-size:16px;
    font-weight:bold;
    border:unset;
    border-radius: 4px;
    cursor: pointer;
    transition: .5s ease-in-out;
}

.login_submit:disabled{
    background:var(--button-disabled);
    cursor: not-allowed;
}

.login_submit:hover{
    background-position: right;
}

.login_reset{
    font-size:12px;
    color:#929292;
    text-decoration:none;
}

.login_submit.error{
    background: var(--input-error);
}
.login_submit.success{
    background: var(--button-success);
}
</style>

     
     
     

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script defer src="./script.js"></script>
    <title>Registro</title>
</head>
<body>
    <main class="login">
        <div class="login_container">
            <h1 class="login_title">Registro</h1>
        
            
            <form method="post" action="/cliente/cadastro" class="login_form">

                <input type="text" class="login_input" placeholder="CPF" name="cpf">
                <span class="login_border"></span>

                <input type="text" class="login_input" placeholder="Nome" name="nome">
                <span class="login_border"></span>
                
                   <input type="text" class="login_input" placeholder="Telefone" name="Telefone">
                <span class="login_border"></span>
                
                
                <input type="email" class="login_input" placeholder="E-mail" name="email">
                <span class="login_border"></span>

                <input type="password" class="login_input" placeholder="Senha" name="senha">
                <span class="login_border"></span>

                <input type="password" class="login_input" placeholder="Repita a senha" name="password_repetida">
                <span class="login_border"></span>

		<input type = "submit" value="cadastrar"/>
            </form>
        </div>


    </main>
</body>
</html>