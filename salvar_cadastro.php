<?php
    session_start();
    include_once("conexao.php");

    $cnpj = $_POST['cnpj'];
    $nome = $_POST['nome'];
    $cep = $_POST['cep'];
    $logradouro = $_POST['logradouro'];
    $numero = $_POST['numero'];
    $bairro = $_POST['bairro'];
    $uf = $_POST['uf'];
    $municipio = $_POST['municipio'];
    $complemento = $_POST['complemento'];
    $telefone = $_POST['telefone'];

    $sql = "INSERT INTO `cadastro_motorista`(`cnpj`, `nome`, `cep`, `logradouro`, `numero`, `bairro`, `uf`, `municipio`, `complemento`, `telefone`)
    VALUES ('$cnpj','$nome','$cep','$logradouro','$numero','$bairro','$uf','$municipio','$complemento','$telefone')";

    $salvar = mysqli_query($conn, $sql);
        
    if( $salvar == 1 ){
        $_SESSION['autenticado'] = true;
        $_SESSION['dbconnsuccess'] = "Cadastro Efetuado com Sucesso";
        echo '<meta http-equiv="refresh" content="0;URL=index"/>';
    }else{
           
        $_SESSION['nao_autenticado'] = true;
        $_SESSION['dbconnerror'] = $conn->error;
        echo '<meta http-equiv="refresh" content="0;URL=index"/>';
        exit();

    }
