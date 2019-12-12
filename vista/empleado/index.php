<?php
//Se incluye el head general
include '../head.php';

//Se incluye controlador de empleado
include "../../controlador/empleado_controller.php";

session_start(); //Iniciamos o Continuamos la sesion
$usuario = $_SESSION['id_usuario'];

//Se instancia la clase empleado
$empleadoInst = new EmpleadoController;

header("Content-Type: text/html;charset=utf-8");
?>
<div class="card text-center">
  <div class="">
    <?php include "../header.php";?>
  </div>
  <div class="card-body">
    <div class="row">
      <div class="col-md-3 text-left">
        <?php include "../sidebar.php";?>
      </div>
      <div class="col-md-6">
        <?php include "datos_personales.php";?>
      </div>
      <div class="col-md-3">
        <?php include "../sidebar_derecho.php";?>
      </div>
    </div>
  </div>
  <div class="card-footer text-muted bg-dark">
    <?php include "../footer.php";?>
  </div>
</div>
