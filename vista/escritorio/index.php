<?php
//Se incluye el head general
include '../head.php';
?>
<div class="card text-center">
  <div class="">
    <?php include "../header.php";?>
  </div>
  <div class="card-body">
    <div class="row">
      <div class="col-md-12">
        <?php include "../buscar.php";?>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3 text-left">
        <?php include "../sidebar.php";?>
      </div>
      <div class="col-md-6">
        <?php include "body.php";?>
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