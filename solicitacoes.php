<?php
include_once("starter.php");
include_once("conexao.php");
$data_hoje = (date('Y-m-d'));

?>

 <div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <div class="col-12">
            
                      <div id="spiner" style="display: none;">
                <!-- <div class="spinner-border"></div> -->
                <div class="text-center">
                  <div class="spinner-border" role="status">

                  </div>
                </div>
                <div class="text-center">
                  <!-- <label>Buscando...</label> -->
                </div>
              </div>
<div class="card">
  <div class="card-header">
    <h3 class="card-title">Clientes - VS | Guerra</h3>
  </div>
  <!-- /.card-header -->
  <div class="card-body">
    <table id="example1" class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>VS | Guerra</th>
          <th>Cliente</th>
          <th>Valor</th>
          <th>Juros</th>
          <th>Valor Bruto</th>
          <th>Valor Parcela</th>
          <th>Data Inicio</th>
          <th>Usuário</th>
          <th>Status Online</th>
          <th>Status</th>
          <th>Ações</th>
        </tr>
      </thead>
      <tbody>
        
        <?php
                                    $usuario = $_SESSION['login'];

                           $select_sql = ("SELECT c.*, c.id as 'id_cliente', s.id as id_soli, s.*, st.* , CASE WHEN TRIM(LTRIM(c.sobrenome)) = '' and TRIM(LTRIM(c.nome)) = '' THEN TRIM(LTRIM(c.socio))
                           WHEN TRIM(LTRIM(c.nome)) = '' THEN TRIM(LTRIM(c.sobrenome))
                           ELSE TRIM(LTRIM(c.nome))
                          END nome_cliente FROM `solicitacao` s INNER JOIN clientes c on s.id_cliente = c.id INNER JOIN status st on s.status_solicitacao = st.id  ORDER by `nome_cliente` ASC ");
                          //  $select_sql = ("SELECT c.*, c.id as 'id_cliente', s.id as id_soli, s.*, st.*, comp.*
                          // FROM `solicitacao` s 
                          // INNER JOIN clientes c on s.id_cliente = c.id 
                          // INNER JOIN status st on s.status_solicitacao = st.id
                          // INNER JOIN comprovantes comp on s.id = comp.id_solicitacao 
                          // group by comp.id_solicitacao
                          // ORDER by comp.dt_pgto DESC;");
                            
                            $recebidos = mysqli_query($conn, $select_sql);
                            
                            while ($row_usuario = mysqli_fetch_assoc($recebidos)) {
                                // print_r($row_usuario);
                                $status_solicitacao = $row_usuario['status_solicitacao'];
                                $class = $row_usuario['class'];
                                $cliente = $row_usuario['nome'];
                                $sobrenome = $row_usuario['sobrenome'];
                                $id = $row_usuario['id'];
                                $id_cliente = $row_usuario['id_cliente'];
                                $id_servico = $row_usuario['id_servico'];
                                $id_soli = $row_usuario['id_soli'];
                                $nome_cliente = $row_usuario['nome_cliente'];

                                $descricao = $row_usuario['descricao'];
                                $class = $row_usuario['class'];
                                $tel = $row_usuario['tel'];
                                $tel = preg_replace("/[^0-9,]+/i","",$tel);
                                $usuario = $row_usuario['usuario'];
                                $data_hora = date('d/m/Y', strtotime($row_usuario['dt_solicitacao']));
                                $dt_pgto = date('Y-m-d', strtotime($row_usuario['dt_pgto']));
                                
                                @$valor_bruto = "R$ ". number_format($row_usuario['valor_bruto'], 2, ',', '.'); 
                                $valor = "R$ ". number_format($row_usuario['valor'], 2, ',', '.');
                                @$juros = "R$ ". number_format($row_usuario['juros'], 2, ',', '.');
                                @$valor_parcela = "R$ ". number_format($row_usuario['valor_parcela'], 2, ',', '.');
                                
                                if($id_servico == 1){

                                    $id_servico = 'VS';
                                    $page = "detalhes.php";

                                }else{
    
                                    $id_servico = 'Guerra';
                                    $valor_parcela = "";
                                    $page = "detalhes_guerra.php";
    
                                }

                                echo "<tr>";
                                echo "<td >$id_servico</td>";
                                echo "<td >$nome_cliente</td>";
                                echo "<td > $valor</td>";
                                echo "<td >$juros</td>";
                                echo "<td >$valor_bruto</td>";
                                echo "<td >$valor_parcela</td>";
                                echo "<td >$data_hora</td>";
                                echo "<td >$usuario</td>";
                               

                                if( $data_hoje < $dt_pgto or $data_hoje == $dt_pgto ){
                                  echo "<td ><span class='badge badge-success'>EM DIA</span></td>";
                                }else{
                                  echo "<td ><span class='badge badge-danger'>EM ATRASO</span></td>";
                                }

                                echo "<td ><span class='badge $class'>$descricao</span></td>";

                                // echo "<td>$status</td>";
                                // echo "<td class='project-state'><span class='$class'>$status</span></td>";
                                $msg = "Você tem um valor de $valor_parcela em atraso";

                                // echo "<td> <ion-icon name='eye-outline' href='teste.php' ></ion-icon> </td>";
                                echo "<td class='text-center'> 
                                <a href='$page?id=$id_soli'> <i aria-hidden='true' class='fas fa-eye' style='font-size:30px;'> </i> </a>
                                <a target='_blank' href='https://api.whatsapp.com/send?phone=55$tel&text=$msg'> <i class='fa fa-whatsapp' style='font-size:30px;color:green;'></i> </a>
                                
                                
                                </td>";

                                // <i class="fas fa-search"></i>
                                echo "</tr>";
                                }
                ?>
        

      </tbody>
    </table>
  </div>
  <!-- /.card-body -->
</div>

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
<script src="../../plugins/jszip/jszip.min.js"></script>
<script src="../../plugins/pdfmake/pdfmake.min.js"></script>
<script src="../../plugins/pdfmake/vfs_fonts.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<!-- <script src="../../dist/js/adminlte.min.js"></script> -->
<!-- AdminLTE for demo purposes -->

<!-- Page specific script -->
<script>
  $(function() {
    $("#example1").DataTable({
      "responsive": true,
      "lengthChange": false,
      "autoWidth": true,
      "ordering": false,
      "searching": true,
      // "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"],
      "buttons": ["excel"],
      "language": {
                    "url": "https://cdn.datatables.net/plug-ins/1.12.1/i18n/pt-BR.json"
                }
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

    // $('#example2').DataTable({
    //   "paging": true,
    //   "lengthChange": false,
    //   "searching": false,
    //   "ordering": false,
    //   "info": true,
    //   "autoWidth": false,
    //   "responsive": true,
    // });
  });
</script>