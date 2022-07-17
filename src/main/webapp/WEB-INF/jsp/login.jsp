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

<script>
const init = () => {
    //ValidaEmail
    const validateEmail = (event) =>{
        const input = event.currentTarget;
        const regex =  /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
        const emailTeste = regex.test(input.value);

        if (!emailTeste){
            sumitButton.setAttribute('disabled', 'disabled');
            input.nextElementSibling.classList.add('error');
        }else{
            sumitButton.removeAttribute('disabled');
            input.nextElementSibling.classList.remove('error')
        }
    }
    //Valida Password
    const validatePassword = (event) => {
        const input = event.currentTarget;

        if (input.value.length < 8){
            sumitButton.setAttribute('disabled', 'disabled');
            input.nextElementSibling.classList.add('error');
        }else{
            sumitButton.removeAttribute('disabled');
            input.nextElementSibling.classList.remove('error')
        }
    }

    //Get dos campos
    const inputEmail = document.querySelector('input[type="email"]');
    const inputPassword = document.querySelector('input[type="password"]');
    const sumitButton = document.getElementById("sumit");

    //Chama funções de validações
    inputEmail.addEventListener('input', validateEmail);
    inputPassword.addEventListener('input', validatePassword);

    //Feedback do usuario para login inválido
    const erroHandler = () => {
        sumitButton.classList.remove('success');
        sumitButton.classList.add('error');
        sumitButton.textContent = 'LOGIN INVÁLIDO'
    }
    //Feedback do usuario para login válido
    const sucessHandler = () => {
        sumitButton.classList.remove('error');
        sumitButton.classList.add('success');
        sumitButton.textContent = 'LOGIN OK'
    }

    if(sumitButton) {
        sumitButton.addEventListener('click', (event) => {
            event.preventDefault();

            sumitButton.textContent = '...Aguarde';

            /*
            A API utilizada é a Reqres para testes e Credeciais para login:

            Email = eve.holt@reqres.in
            Password = cityslicka
            Token return 200 = QpwL5tke4Pnpja7X4
             */
            fetch('https://reqres.in/api/login',{
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    email: inputEmail.value,
                    password: inputPassword.value
                })//Callback para quando fetch return 200
            }).then((response)=> {
                    if (response.status !==200){
                        return erroHandler();
                    }
                    sucessHandler();
            })/*.then((data) => {
                console.log(data)
            })*/
                .catch(()=>{
                 erroHandler();
                })

        })

    }

}
//inicia a função só depois da página carregar
window.onload = init;


</script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script defer src="./script.js"></script>
    <title>Login</title>
</head>
<body>
    <main class="login">
        <div class="login_container">
            <h1 class="login_title">Login</h1>
            <form action="" class="login_form">
                <input type="email" class="login_input" placeholder="E-mail">
                <span class="login_border"></span>

                <input type="password" class="login_input" placeholder="Password">
                <span class="login_border"></span>

                <button id="sumit" class="login_submit">ENTRAR</button>
                <a class="login_reset" href="#">Ou se registre</a>
                <p></p>

                <a class="login_reset" href="#">Esqueci a senha</a>
            </form>
        </div>


    </main>
</body>
</html>