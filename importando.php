<?php
session_start();
include_once("conexao.php");
require './vendor/autoload.php';
$user = $_SESSION['login'];
date_default_timezone_set('America/Recife');
$datahora = date('Y-m-d H:i:s');

use PhpOffice\PhpSpreadsheet\IOFactory;

$arquivo_temporario = $_FILES['file']['tmp_name'];

// Carregar o arquivo Excel
$reader = IOFactory::createReaderForFile($arquivo_temporario);
$spreadsheet = $reader->load($arquivo_temporario);

$planilha = $spreadsheet->getActiveSheet();

$dados = [];
foreach ($planilha->getRowIterator() as $linha) {
  
    $celulas = [];
    foreach ($linha->getCellIterator() as $celula) {
        if($celula->getValue() == 'Imei'){
            continue;
        }else{
        $celulas[] = $celula->getValue();
        }
    }
    $dados[] = $celulas;
}

$tamanho_lote = 900;
$lotes = array_chunk($dados, $tamanho_lote);
$total_linhas_inseridas = 0;

foreach ($lotes as $lote) {
    $sql = "INSERT INTO base (`remessa`, `pedido`, `situacao`, `qtdvolumes`, `awb`, `awb_2`, `created_at`,`updated_at`, `user_created_at`) VALUES ";
    $valores = [];
    foreach ($lote as $registro) {

            if($registro[0] == 'REMESSA' || $registro[0] == ''){
            }else{

                $valores[] = "('" . 
                $conn->real_escape_string($registro[0]) . "',
                '" . $conn->real_escape_string($registro[1]) . "', 
                '" . $conn->real_escape_string($registro[2]) . "',
                " . $conn->real_escape_string($registro[3]) . ", 
                '" . $conn->real_escape_string($registro[4]) . "', 
                '" .$conn->real_escape_string($registro[5]) . "', 
                '" .$datahora . "', 
                '" .$datahora . "', 
                '" . $user . "'
                )";
            }
    }

    $sql .= implode(",", $valores);
    if ($conn->query($sql) === false) {
        echo "Erro ao inserir dados: " . $conn->error;
    } else {
        $total_linhas_lote = count($lote);
        $total_linhas_inseridas += $total_linhas_lote -2 ;

    }
}
    echo "Total Inseridos " . $total_linhas_inseridas . " registros";

$conn->close();

?>