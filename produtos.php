<?php
    $servername = "localhost";
    $username = "fseletro";
    $password = "1234";
    $database = "fullstack_eletro";

    //Criando a conexão
    $conn = mysqli_connect($servername, $username, $password, $database);

    //Verificando a conexão
    if (!$conn){
        die("A conexão ao BD falhou". mysqli_connect_error());
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <title>Produtos - Full Stack Eletro</title>
        <link rel="stylesheet" href="./CSS/estilo.css">
        <script src="JS/funcoes.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>

    <body>
        <div class="container-fluid">
        <!-- Incio do menu-->
        <?php
            include('menu.html');
        ?>
        <!-- Fim do menu-->
        <header>
            <h1>Produtos</h1>
        </header>
        <hr>
        <section class="categorias">
            <h3>Categorias</h3>
            <ul>
                <li onclick="exibir_todos()">Todos (12)</li>
                <li onclick="exibir_categoria('geladeira')">Geladeiras (3)</li>
                <li onclick="exibir_categoria('fogao')">Fogões (2)</li>
                <li onclick="exibir_categoria('microondas')">Microondas (3)</li>
                <li onclick="exibir_categoria('lavaroupa')">Lavadora de roupas (2)</li>
                <li onclick="exibir_categoria('lavaloucas')">Lava louças (2)</li>
            </ul>
        </section>

        
        <?php

            $sql = "select * from produtos";
            $result = $conn->query($sql);

            if($result->num_rows > 0){
                while($rows = $result->fetch_assoc()){
                    

        ?>

        <div class="box_produto" id="<?php echo $rows["categorias"]; ?>" style="display:inline-block;">
            <img src="<?php echo $rows["nome_imagem"];?>" width="80px" onmouseover="aumenta(this)"
                onmouseout="diminui(this)">
            <br>
            <p class="descricao"><?php echo $rows["descricao"];?></p>
            <hr>
            <p class="descricao"><strike><?php echo $rows["preco_normal"];?></strike></p>
            <p class="preco"><?php echo $rows["preco_venda"];?></p>
        </div>

        <?php
                }
            } else{
                echo "Nenhum produto cadastrado!";
            }        
                    
        ?>
        
        <footer id="rodape">
            <p id="formas_pagamento"><b>Formas de pagamentos:</b></p>
            <img src="./imagens/formas-pagamentos.png">
            <p>&copy; Recode Pro</p>
        </footer>
        <!-- jQuery and JS bundle w/ Popper.js -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        </div>
    </body>

</html>
