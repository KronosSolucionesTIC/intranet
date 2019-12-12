<?php $datosEmpleado = $empleadoInst->getEmpleadoUsuario($usuario);?>
<div class="card mb-3">
  <div class="card-header">
  	<label class="font-weight-bold text-left">Datos personales empleado - Editar</label>
  </div>
  <div class="card-body">
    <form id="form_empleado_editar" method="POST" enctype="multipart/form-data">
        <div class="form-group row" hidden>
          <div class="col-sm-12">
              <input type="text" class="form-control" name="id_empleado" value="<?php echo $datosEmpleado[0]["id_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="ape1_empleado" class="col-sm-3 col-form-label text-left">Primer apellido</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="ape1_empleado" value="<?php echo $datosEmpleado[0]["ape1_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="ape2_empleado" class="col-sm-3 col-form-label text-left">Segundo apellido</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="ape2_empleado" value="<?php echo $datosEmpleado[0]["ape2_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="nombre_empleado" class="col-sm-3 col-form-label text-left">Nombres</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="nombre_empleado" value="<?php echo $datosEmpleado[0]["nombre_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="fecha_nac_empleado" class="col-sm-3 col-form-label text-left">Fecha de nacimiento</label>
          <div class="col-sm-9">
              <input type="date" class="form-control" name="fecha_nac_empleado" value="<?php echo $datosEmpleado[0]["fecha_nac_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_genero_empleado" class="col-sm-3 col-form-label text-left">Genero</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_genero_empleado">
              <?php echo $empleadoInst->getSelectGenero($datosEmpleado[0]["fkID_genero_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="cedula_empleado" class="col-sm-3 col-form-label text-left">Cedula empleado</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="cedula_empleado" value="<?php echo $datosEmpleado[0]["cedula_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_nacionalidad_empleado" class="col-sm-3 col-form-label text-left">Nacionalidad</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_nacionalidad_empleado">
              <?php echo $empleadoInst->getSelectNacionalidad($datosEmpleado[0]["fkID_nacionalidad_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_civil_empleado" class="col-sm-3 col-form-label text-left">Estado civil</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_civil_empleado">
              <?php echo $empleadoInst->getSelectEstadoCivil($datosEmpleado[0]["fkID_civil_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="direccion_empleado" class="col-sm-3 col-form-label text-left">Direccion actual</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="direccion_empleado" value="<?php echo $datosEmpleado[0]["direccion_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_depar_empleado" class="col-sm-3 col-form-label text-left">Departamento de nacimiento</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_depar_empleado">
              <?php echo $empleadoInst->getSelectDepartamento($datosEmpleado[0]["fkID_depar_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_ciudad_empleado" class="col-sm-3 col-form-label text-left">Ciudad de nacimiento</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_ciudad_empleado">
              <?php echo $empleadoInst->getSelectCiudad($datosEmpleado[0]["fkID_ciudad_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="telefono_empleado" class="col-sm-3 col-form-label text-left">Telefono</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="telefono_empleado" value="<?php echo $datosEmpleado[0]["telefono_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="celular_empleado" class="col-sm-3 col-form-label text-left">Celular</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="celular_empleado" value="<?php echo $datosEmpleado[0]["celular_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_eps_empleado" class="col-sm-3 col-form-label text-left">EPS</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_eps_empleado" >
              <?php echo $empleadoInst->getSelectEps($datosEmpleado[0]["fkID_eps_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_pension_empleado" class="col-sm-3 col-form-label text-left">Fondo de pensiones</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_pension_empleado">
              <?php echo $empleadoInst->getSelectPension($datosEmpleado[0]["fkID_pension_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_cesantias_empleado" class="col-sm-3 col-form-label text-left">Fondo de cesantias</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_cesantias_empleado">
              <?php echo $empleadoInst->getSelectCesantias($datosEmpleado[0]["fkID_cesantias_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="rh_empleado" class="col-sm-3 col-form-label text-left">RH</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="rh_empleado" value="<?php echo $datosEmpleado[0]["rh_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_banco_empleado" class="col-sm-3 col-form-label text-left">Banco</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_banco_empleado">
              <?php echo $empleadoInst->getSelectBancos($datosEmpleado[0]["fkID_banco_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="cuenta_empleado" class="col-sm-3 col-form-label text-left">No de cuenta</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="cuenta_empleado" value="<?php echo $datosEmpleado[0]["cuenta_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="email_empleado" class="col-sm-3 col-form-label text-left">Email</label>
          <div class="col-sm-9">
              <input type="email" class="form-control" name="email_empleado" value="<?php echo $datosEmpleado[0]["email_empleado"] ?>" >
          </div>
        </div>
        <div class="form-group row">
          <label for="foto_empleado" class="col-sm-3 col-form-label text-left">Foto</label>
          <div class="col-sm-9 text-left">
          	<div class="custom-file">
                <input class="custom-file-input" id="foto_editar" name="foto_editar" type="file" />
                    <label class="custom-file-label" for="customFile">
                        Foto...
                    </label>
            </div>
            <img src="<?php echo '../../imagenes/' . $datosEmpleado[0]["foto_empleado"] ?>">
          </div>
        </div>
    <script>
        // Add the following code if you want the name of the file appear on select
$(".custom-file-input").on("change", function() {
  var fileName = $(this).val().split("\\").pop();
  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
});
    </script>
        <div class="form-group row">
          <div class="col-md-12">
              <input type="submit" class="btn btn-danger" value="Cancelar">
              <input type="submit" class="btn btn-success" value="Guardar" id="editar_empleado">
          </div>
        </div>
    </form>
  </div>
</div>
