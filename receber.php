<?php
session_start();
?><title>Recebimento</title><?php
include_once("starter.php");
include_once("conexao.php");
$user = $_SESSION['login'];

$transportadora = $_SESSION['transportadora'];
$anomalia = $_SESSION['anomalia'];
$situacaoRecebimento = $_SESSION['situacaoRecebimento'];


$select_situacao = "SELECT * FROM `situacaorecebimento`";
$mysqli_query_situacao = mysqli_query($conn, $select_situacao);


$select_anomalia = "SELECT * FROM `anomalia`";
$mysqli_query_anomalia = mysqli_query($conn, $select_anomalia);


$select_transportadora = "SELECT * FROM `transportadora`";
$mysqli_query_transportadora = mysqli_query($conn, $select_transportadora);

$select_recebido = "SELECT * from `base_recebimento` where user_created_at = '$user' and deleted_at is null order by id desc";
$mysqli_query_recebido = mysqli_query($conn, $select_recebido);

?>

<form id="myForm" method="POST" enctype="multipart/form-data" action="salvar_recebimento" id="quickForm">

<form method="POST" enctype="multipart/form-data" action="" id="quickForm">

<div class="row">
    <div class="col-12">
        <div class="card">
              <div class="card-header ">
                <h3 class="card-title ">PAINEL DE CONFERÊNCIA - DELIVERY</h3>
              </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Transportadora</label>
                                    <select id="transportadora" required class="form-control select2" name="transportadora">
                                    <option></option>
                                    <?php
                                    while ($row_transportadora = mysqli_fetch_assoc($mysqli_query_transportadora)) {
                                            $name_transportadora =  $row_transportadora['transportadora'];
                                        if( $name_transportadora == $transportadora){
                                            ?> <option selected value="<?php echo $name_transportadora ?>" ><?php echo $name_transportadora ?></option> <?php
                                        }else{
                                            ?> <option value="<?php echo $name_transportadora ?>" ><?php echo $name_transportadora ?></option> <?php
                                        }
                                    }
                                     ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label>Anomalia</label>
                                    <select  class="form-control select2" name="anomalia" >
                                    <option></option>
                                    <?php
                                    while ($row_anomalia = mysqli_fetch_assoc($mysqli_query_anomalia)) {
                                            $name_anomalia = $row_anomalia['name'];
                                        if($name_anomalia == $anomalia){
                                            ?> <option selected value="<?php echo $name_anomalia ?>" ><?php echo $name_anomalia ?></option> <?php
                                        }else{
                                            ?> <option value="<?php echo $name_anomalia ?>" ><?php echo $name_anomalia ?></option> <?php
                                        }
                                    }
                                     ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Situação Recebimento</label>
                                    <select  class="form-control select2" name="situacaoRecebimento">
                                    <option></option>
                                    <?php
                                        while ($row_situacao = mysqli_fetch_assoc($mysqli_query_situacao)) {
                                                $situacao = $row_situacao['situacao'];
                                            if( $situacao == $situacaoRecebimento){
                                                ?> <option selected value="<?php echo $situacao ?>" ><?php echo $situacao ?></option> <?php
                                            }else{
                                                ?> <option value="<?php echo $situacao ?>" ><?php echo $situacao ?></option> <?php
                                            }
                                        }
                                     ?>
                                    </select>
                                </div>
                            </div>
                           
                        </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>

<div id="responseMessage"></div>

<div id="spinner" class="d-none">
    <div class="d-flex justify-content-center">
        <div class="spinner-border" role="status"></div>
    </div>
</div>
<br>

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header ">
                    <h3 class="card-title ">Beeper</h3>
            </div>
            <div class="row">
                <div class="col-sm-5">
                    <div class="card-body">
                        <input required autofocus autocomplete="off" name="awb" id="awb" class="form-control form-control-lg" type="text" placeholder="AWB">
                    </div>
                </div>
                <div class="col-sm-auto">
                    <div class="card-body">
                      <button type="submit" id="submitButton" class="btn btn-block bg-gradient-primary">Salvar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-12">
        <div class="card">
              <div class="card-header">
                <h3 class="card-title">Recebidos</h3>
              </div>
              <div class="card-body">
                <table id="tablerecebimento" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Index</th>
                    <th>REMESSA</th>
                    <th>PEDIDO</th>
                    <th>AWB</th>
                    <th>STATUS PLANCK</th>
                    <th>SITUAÇÃO RECEBIMENTO</th>
                    <th>ANOMALIA</th>
                  </tr>
                  </thead>
                  <tbody>
                      <?php
                        $index = 1;
                        while ($row_recebido = mysqli_fetch_assoc($mysqli_query_recebido)) {
                            
                        ?>
                        <tr>
                            <td><?php echo $index ?></td>
                            <td><?php echo $row_recebido['remessa'] ?></td>
                            <td><?php echo $row_recebido['pedido'] ?></td>
                            <td><?php echo $row_recebido['awb'] ?></td>
                            <td><?php echo $row_recebido['situacao'] ?></td>
                            <td><?php echo $row_recebido['situacaoRecebimento'] ?></td>
                            <td><?php echo $row_recebido['anomalia'] ?></td>
                        </tr>
                        
                        <?php
                        $index ++;
                        }
                        ?>
                  </tbody>
                </table>
              </div>
        </div>
    </div>
</div>

</form>
<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="../../plugins/datatables/jquery.dataTables.min.js"></script>

<script src="../../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<!-- <script src="../../plugins/jszip/jszip.min.js"></script> -->
<!-- <script src="../../plugins/pdfmake/pdfmake.min.js"></script> -->
<script src="../../plugins/pdfmake/vfs_fonts.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- Select2 -->
<script src="../../plugins/select2/js/select2.full.min.js"></script>


<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- SweetAlert2 -->
<script src="../../plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="../../plugins/toastr/toastr.min.js"></script>

<script>
  $(function () {
     //Initialize Select2 Elements
     $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
    theme: 'bootstrap4'
    })

    $("#tablerecebimento").DataTable({
       //   "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
      "buttons": ["csv", "excel","pdf"],
      "paging": true,
      "lengthChange": false,
      "searching": true,
      "ordering": false,
      "info": true,
      "autoWidth": true,
      "responsive": true,
    }).buttons().container().appendTo('#tablerecebimento_wrapper .col-md-6:eq(0)');
    
  });
</script>

<script>
    // Obter o elemento select pelo ID
        var selectElement = document.getElementById('transportadora');

        // Adicionar um ouvinte de evento para a mudança de seleção
        selectElement.addEventListener('change', function() {
            // Obter o valor selecionado
            var valorSelecionado = selectElement.value;

            // Obter o texto da opção selecionada
            var textoSelecionado = selectElement.options[selectElement.selectedIndex].text;

            // Exibir os valores obtidos
            console.log('Valor selecionado:', valorSelecionado);
            console.log('Texto selecionado:', textoSelecionado);

            // Aqui você pode fazer qualquer ação desejada com os valores selecionados
            // Por exemplo, enviar para o servidor, mostrar algo na página, etc.
        });

</script>

<script>
    $(document).ready(function() {
        $('#myForm').submit(function(event) {
            event.preventDefault(); // Evita o envio do formulário padrão

            // Exibe o spinner
            $('#spinner').removeClass('d-none');
            awb = document.getElementById('awb').value
            $.ajax({
                    type: 'POST',
                    url: 'salvar_recebimento',
                    data: $(this).serialize(),
                    success: function(response) {
                        // $('#responseMessage').html(response);
                        console.log(response);
                        if (response.trim() === 'Recebido Sucesso') {
                            // exibirToast('success', 'Recebimento bem-sucedido.');
                            toastr.success('Recebimento bem-sucedido.\n' + awb)
                            // window.location.reload();
                            setTimeout(function() {
                                window.location.reload();
                            }, 1000);
                        } else if (response.trim() === 'Já recebido') {
                            document.getElementById('awb').value = "";
                            document.getElementById('awb').focus(); 
                            // exibirToast('warning', 'Recebimento já processado.');
                             toastr.warning('Recebimento já processado.\n' + awb)
                        } else if (response.trim() === 'Não localizado na base') {
                            document.getElementById('awb').value = "";
                            document.getElementById('awb').focus();
                            // exibirToast('warning', 'Item não encontrado na base de dados.');
                            toastr.error('Item não encontrado na base de dados.\n' + awb)

                        } else {
                            document.getElementById('awb').value = "";
                            document.getElementById('awb').focus();
                            // exibirToast('error', 'Ocorreu um erro durante o processamento.');
                            toastr.error('Ocorreu um erro durante o processamento.\n' + awb)
                        }
                    },
                    error: function(xhr, status, error) {
                        document.getElementById('awb').value = "";
                        document.getElementById('awb').focus();
                        // exibirToast('error', 'Erro na requisição: ' + status);
                        toastr.error('error', 'Erro na requisição: ' + status)
                        
                    },
                    complete: function() {
                        $('#spinner').addClass('d-none');
                    }
                });

                function exibirToast(icon, message) {
                    var Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000
                    });

                    Toast.fire({
                        icon: icon,
                        title: message
                    });

                }

        });
    });
</script>