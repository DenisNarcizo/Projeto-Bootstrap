<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "fullstack_eletro";

    //Criando a conexão
    $conn = mysqli_connect($servername, $username, $password, $database);

    //Verificando a conexão
    if (!$conn){
        die("A conexão ao BD falhou". mysqli_connect_error());
    }

    if(isset($_POST['produto']) && isset($_POST['quantidade']) && isset($_POST['total'])){
        $produto = $_POST['produto'];
        $quantidade = $_POST['quantidade'];
        $total = $_POST['total'];
        
        $sql = "insert into vendas (produto, quantidade, total) values ('$produto','$quantidade','$total')";
        $result = $conn->query($sql);
    }
?>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <title>Full Stack Eletro</title>
        <link rel="stylesheet" href="CSS/estilo.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>

    <body>
        <div class="container-fluid">
        <?php
            include('menu.html');
        ?>
        <main>
            <h1>
                Faça seu pedido!
            </h1>
            <p>Aproveite nossas promoções!</p>
        </main>
        <br>
            <form>
                <div class="form-group">
                    <label for="box_produto">Produto:</label>
                    <input type="text" class="form-control" name="produto" style="width: 500px;"><br>
                </div>
                <div class="form-group">
                    <label for="box_qtd">Quantidade:</label>
                    <input type="text" class="form-control" name="quantidade" style="width: 500px;"><br>
                </div>
                <div class="form-group">
                    <label for="box_total">Total:</label>
                    <input type="text" class="form-control" name="total" style="width: 500px;"><br>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
        <br><br><br>

        <?php

            $sql = "select * from vendas";
            $result = $conn->query($sql);

            if($result->num_rows > 0){
                while($rows = $result->fetch_assoc()){
                echo "Data: ", $rows['data'], "<br>";
                echo "Produto: ", $rows['produto'], "<br>";
                echo "Quantidade: ", $rows['quantidade'], "<br>";
                echo "Total: ", $rows['total'], "<br>";
                echo "<hr>";
            }
        } else {
            echo "Nenhuma venda ainda!!";
        }
        ?>

        <br><br><br><br><br>
        <br><br><br><br><br>
        <br><br><br>
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
