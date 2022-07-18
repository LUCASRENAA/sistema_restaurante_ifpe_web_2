import mysql.connector
import getpass



def conectarnobanco(texto,host,user,password):
    con = mysql.connector.connect(host=host,database='restaurante',user=user,password=password)
    if con.is_connected():
        db_info = con.get_server_info()
        print("Conectado ao servidor MySQL versão ",db_info)
        cursor = con.cursor()
        
        cursor.execute(texto)
        linha = cursor.fetchone()
        print("Conectado ao banco de dados ",linha)
    if con.is_connected():
        cursor.close()
        con.close()
        print("Conexão ao MySQL foi encerrada")
def criarTabelas(host,user,password):
    print("-" * 30 + "Criando banco de dados" + "-" * 30)




    print("Se conectando ao banco")
    try:
      print("Verificando os dados")
      cnx = mysql.connector.connect(host=host,user=user,password=password)

      mycursor = cnx.cursor()
      mycursor.execute("CREATE DATABASE restaurante")
      print("Banco criado com sucesso :D")
      
    except:
      print("ERRO EM CRIAR DATABASE restaurante\n verifique se existe um banco de dados chamado restaurante no seu mysql")


    textos = []
    print("-" * 30 + "Criar tabelas" + "-" *30)

    texto = """
     CREATE TABLE Cliente (
    cpf VARCHAR(11) PRIMARY KEY ,
    nome VARCHAR(40),
       telefone VARCHAR(40),
    email VARCHAR(40),
    senha VARCHAR(40)
    );


    """
    textos.append(texto)


    
    texto = """
   
CREATE TABLE Prato(
        id int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40),
       descricao VARCHAR(40),
    preco DOUBLE,
        PRIMARY KEY (id)

    );


    """
    textos.append(texto)

    
    texto = """
 

CREATE TABLE FormaPagamento(
        id int NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(40),
        PRIMARY KEY (id)

    );



    """
    textos.append(texto)


    
    texto = """

CREATE TABLE Pedido(
        id int NOT NULL AUTO_INCREMENT,
          id_FormaPagamento int,
          id_prato int,
    preco DOUBLE,

    cpf VARCHAR(11),

    observacao VARCHAR(40),
        FOREIGN KEY (ID_FormaPagamento) REFERENCES FormaPagamento(id),
        FOREIGN KEY (cpf) REFERENCES Cliente(cpf),
        FOREIGN KEY (ID_prato) REFERENCES Prato(id),

        PRIMARY KEY (id)

    );

    """
    textos.append(texto)
    for texto in textos:
        print(texto)
        try:
            conectarnobanco(texto,host,user,password)
            print("Tabela criada com sucesso")

        except:
            #print(texto)
            print("Opa, algum erro aconteceu na criação da tabela")
            #conectarnobanco(texto,host,user,password)




    #conectarnobanco(texto,host,user,password)


    print("\n\n\n\n " + "-" * 30 + "CRIADO PARA O SISTEMA DA ACADEMIA DO SEU ZÉ" + "-" * 30)


criarTabelas('127.0.0.1','root','root')