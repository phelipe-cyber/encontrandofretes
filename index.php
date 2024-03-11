<?php
error_reporting(E_ALL);
session_start();
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cadastro</title>
  <link rel="shortcut icon" href="/dist/img/ndicon.ico">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">

  <script src="https://code.jquery.com/jquery-1.9.1.js"></script>

</head>

<body class="hold-transition login-page" background="./dist/img/boxed-bg.jpg">
  <div class="login-box">
    <!-- /.login-logo -->
    <div class="card card-outline card-primary">
      <div class="card-header text-center">
        <a href="#" class="h1"><b>Cadastro</b></a>
      </div>
      <div class="card-body">
        <form action="salvar_cadastro.php" method="post">

          <div id="spiner" style="display: none;">
            <div class="text-center">
              <div class="spinner-border" role="status">
              </div>
            </div>
          </div>
          <br>

          <div id="alert-danger" class="alert alert-danger alert-dismissible" style="display:none;">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <h5><i class="icon fas fa-ban"></i> Alert!</h5>
            <label id="errmessage" for=""></label>
          </div>

          <?php
          if (isset($_SESSION['nao_autenticado'])) :
          ?>
            <div id="alert-danger" class="alert alert-danger alert-dismissible">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <h5><i class="icon fas fa-ban"></i> Alert!</h5>
              <?php echo $_SESSION['dbconnerror'] ?>
            </div>
            <script>
              $("#alert-danger").fadeTo(4000, 500).slideUp(500, function() {
                $("#alert-danger").slideUp(500);
              });
            </script>
          <?php
          endif;
          unset($_SESSION['nao_autenticado']);
          unset($_SESSION['dbconnerror']);
          ?>

          <?php
          if (isset($_SESSION['autenticado'])) :
          ?>
            <div id="alert-success" class="alert alert-success alert-dismissible">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <h5><i class="icon fas fa-ban"></i> Alert!</h5>
              <?php echo $_SESSION['dbconnsuccess'] ?>
            </div>
            <script>
              $("#alert-success").fadeTo(4000, 500).slideUp(500, function() {
                $("#alert-success").slideUp(500);
              });
            </script>
          <?php
          endif;
          unset($_SESSION['autenticado']);
          unset($_SESSION['dbconnsuccess']);
          ?>

          <div id="telefoneContainer" class="input-group mb-3">
            <input required id="telefoneInput" name="telefone" type="text" class="form-control" data-inputmask="'mask': ['(99) 9999-9999', '(99) 99999-9999']" data-mask placeholder="Telefone ou Whatsapp">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div id="modeloContainer" class="input-group mb-3">
            <input required id="modeloInput" name="modelo" type="text" class="form-control" placeholder="TIPO DE VEICULO">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>


          <div id="cnpjContainer" class="input-group mb-3">
            <input required id="cnpjInput" name="cnpj" type="text" class="form-control" data-inputmask="'mask': ['99.999.999/9999-99', 999.999.999-99 ]" data-mask placeholder="CNPJ ou CPF">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input required id="nome" name="nome" type="text" autocomplete="false" class="form-control" placeholder="NOME">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input required id="cep" name="cep" type="text" autocomplete="false" class="form-control" placeholder="CEP">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input required id="logradouro" name="logradouro" type="text" autocomplete="false" class="form-control" placeholder="LOGRADOURO">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input required id="numero" name="numero" type="text" autocomplete="false" class="form-control" placeholder="NUMERO">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input required id="bairro" name="bairro" type="text" autocomplete="false" class="form-control" placeholder="BAIRRO">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input required id="uf" name="uf" type="text" autocomplete="false" class="form-control" placeholder="UF">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input required id="municipio" name="municipio" type="text" autocomplete="false" class="form-control" placeholder="MUNICIPIO">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>

          <div class="input-group mb-3">
            <input id="complemento" name="complemento" type="text" autocomplete="false" class="form-control" placeholder="COMPLEMENTO">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>


          <script>
            $(document).ready(function() {
              $("#cnpjInput").on('keyup', function(event) {

                var cnpj_completo = document.getElementById("cnpjInput").value;
                var cnpj = cnpj_completo.replace(/[^0-9]/g, '');
                console.log(cnpj);
                console.log(cnpj.length);

                if (cnpj.length == 14) {

                  document.getElementById("spiner").style = 'display:block;';
                  var vData = {
                    cnpj: cnpj,
                    cnpj_completo: cnpj_completo
                  };

                  $.ajax({
                    url: 'https://brasilapi.com.br/api/cnpj/v1/' + cnpj,
                    method: "GET",
                    success: function(response) {
                      document.getElementById("spiner").style = 'display:none;';
                      console.table(response);

                      nomeRazao = response.razao_social;
                      document.getElementById("nome").value = nomeRazao;

                      bairro = response.bairro;
                      document.getElementById("bairro").value = bairro;

                      municipio = response.municipio;
                      document.getElementById("municipio").value = municipio;

                      logradouro = response.logradouro;
                      document.getElementById("logradouro").value = logradouro;

                      complemento = response.complemento;
                      document.getElementById("complemento").value = complemento;

                      numero = response.numero;
                      document.getElementById("numero").value = numero;

                      cep = response.cep;
                      document.getElementById("cep").value = cep;

                      uf = response.uf;
                      document.getElementById("uf").value = uf;

                    },
                    error: function(err) {
                      console.table(err);
                      document.getElementById("spiner").style = 'display:none;';
                      document.getElementById("alert-danger").style = 'display:block;';
                      errmessage = err.responseJSON.message;
                      document.getElementById("errmessage").innerText = errmessage;
                      $("#alert-danger").fadeTo(4000, 500).slideUp(500, function() {
                        $("#alert-danger").slideUp(500);
                      });

                    },
                    complete: function(com) {
                      document.getElementById("spiner").style = 'display:none;';
                    },
                  });
                }
              });
            });
          </script>

          <div class="row">
            <!-- /.col -->
            <div class="col-5">
              <button type="submit" class="btn btn-primary btn-block">Enviar</button>
            </div>
            <!-- /.col -->
          </div>
        </form>
        <!-- <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p> -->
        <!-- <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p> -->
      </div>
      <!-- /.card-body -->
    </div>
    <!-- /.card -->
  </div>
  <!-- /.login-box -->

  <!-- jQuery -->
  <script src="../../plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../../dist/js/adminlte.min.js"></script>

  <script src="../../plugins/inputmask/jquery.inputmask.min.js"></script>

  <script>
    $(function() {
      $('[data-mask]').inputmask()

    })
  </script>
</body>

</html>