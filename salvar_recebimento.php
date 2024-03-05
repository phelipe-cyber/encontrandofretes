<?php
session_start();
error_reporting(E_ERROR | E_PARSE);
// include_once("starter.php");
include_once("conexao.php");
$user = $_SESSION['login'];
date_default_timezone_set('America/Recife');
$datahora = date('Y-m-d H:i:s');

$transportadora = $_POST['transportadora'];
$_SESSION['transportadora'] = $transportadora;

$anomalia = $_POST['anomalia'];
$_SESSION['anomalia'] = $anomalia;

$situacaoRecebimento = $_POST['situacaoRecebimento'];
$_SESSION['situacaoRecebimento'] = $situacaoRecebimento;

$awb = $_POST['awb'];

$select_base = "SELECT
                    b.awb as 'na_base',
                    CASE 
                        WHEN br.deleted_at is not null THEN NUll
                        ELSE br.awb
                    END AS recebido,
                    b.remessa as 'remessa',
                    b.pedido as 'pedido',
                    b.situacao as 'situacao',
                    b.qtdvolumes as 'qtdvolumes',
                    b.awb as 'awb',
                    b.awb_2 as 'awb_2'
                    FROM
                    base b
                    left join base_recebimento br on
                    br.awb = b.awb
                    WHERE
                    b.awb = '$awb' and br.deleted_at IS NULL ";

$mysqli_query_base = mysqli_query($conn, $select_base);
$num_rows = mysqli_num_rows($mysqli_query_base);
while ($row_query_base = mysqli_fetch_assoc($mysqli_query_base)) {
    
    $na_base = $row_query_base['na_base'];
    $recebido= $row_query_base['recebido'];

    $remessa= $row_query_base['remessa'];
    $pedido= $row_query_base['pedido'];
    $situacao= $row_query_base['situacao'];
    $qtdvolumes= $row_query_base['qtdvolumes'];
    $awb_2= $row_query_base['awb_2'];
};

if ($na_base == "") {
    echo "Não localizado na base";
}elseif( $recebido <> "" ){
    echo "Já recebido";
    }else{

        $inset_base_recebimento = "INSERT INTO `base_recebimento`(`id`, `remessa`, `pedido`, `situacao`, `qtdvolumes`, 
        `awb`, `awb_2`, `transportadora`, `anomalia`, `situacaoRecebimento`, `created_at`,`updated_at`, `deleted_at`, `user_created_at`) 
        VALUES (NULL,'$remessa','$pedido','$situacao',$qtdvolumes,'$awb','$awb_2','$transportadora','$anomalia','$situacaoRecebimento', '$datahora', '$datahora', NULL,'$user')";
        $mysqli_query_add_base = mysqli_query($conn, $inset_base_recebimento);

        if ($mysqli_query_add_base == 1) {
            echo "Recebido Sucesso";
        }else{
            echo "error";
            // echo "error". $conn->error;
            
        }
}