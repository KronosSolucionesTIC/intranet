<div class="card mb-3">
  <div class="card-header">
    <label class="font-weight-bold text-left">Datos personales empleado - Nuevo</label>
  </div>
    <div class="card-body">
    <form id="form_empleado_crear" method="POST" enctype="multipart/form-data">
        <div class="form-group row">
          <label for="ape1_empleado" class="col-sm-3 col-form-label text-left">Primer apellido</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="ape1_empleado" placeholder="Primer apellido">
          </div>
        </div>
        <div class="form-group row">
          <label for="ape2_empleado" class="col-sm-3 col-form-label text-left">Segundo apellido</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="ape2_empleado" placeholder="Segundo apellido">
          </div>
        </div>
        <div class="form-group row">
          <label for="nombre_empleado" class="col-sm-3 col-form-label text-left">Nombres</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="nombre_empleado" placeholder="Nombres">
          </div>
        </div>
        <div class="form-group row">
          <label for="fecha_nac_empleado" class="col-sm-3 col-form-label text-left">Fecha de nacimiento</label>
          <div class="col-sm-9">
              <input type="date" class="form-control" name="fecha_nac_empleado" placeholder="Fecha de nacimiento">
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_genero_empleado" class="col-sm-3 col-form-label text-left">Genero</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_genero_empleado">
              <?php echo $empleadoInst->getSelectGenero(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="cedula_empleado" class="col-sm-3 col-form-label text-left">Cedula empleado</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="cedula_empleado" placeholder="Cedula empleado">
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_nacionalidad_empleado" class="col-sm-3 col-form-label text-left">Nacionalidad</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_nacionalidad_empleado">
              <?php echo $empleadoInst->getSelectNacionalidad(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_estado_civil_empleado" class="col-sm-3 col-form-label text-left">Estado civil</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_civil_empleado">
              <?php echo $empleadoInst->getSelectEstadoCivil(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="direccion_empleado" class="col-sm-3 col-form-label text-left">Direccion actual</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="direccion_empleado" placeholder="Direccion actual">
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_depar_empleado" class="col-sm-3 col-form-label text-left">Departamento de nacimiento</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_depar_empleado">
              <?php echo $empleadoInst->getSelectDepartamento(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_pension_empleado" class="col-sm-3 col-form-label text-left">Ciudad de nacimiento</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_ciudad_empleado">
              <?php echo $empleadoInst->getSelectCiudad(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="telefono_empleado" class="col-sm-3 col-form-label text-left">Telefono</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="telefono_empleado" placeholder="Telefono">
          </div>
        </div>
        <div class="form-group row">
          <label for="celular_empleado" class="col-sm-3 col-form-label text-left">Celular</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="celular_empleado" placeholder="Celular">
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_eps_empleado" class="col-sm-3 col-form-label text-left">EPS</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_eps_empleado">
              <?php echo $empleadoInst->getSelectEps(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_pension_empleado" class="col-sm-3 col-form-label text-left">Fondo de pensiones</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_pension_empleado">
              <?php echo $empleadoInst->getSelectPension(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_cesantias_empleado" class="col-sm-3 col-form-label text-left">Fondo de cesantias</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_cesantias_empleado">
              <?php echo $empleadoInst->getSelectCesantias(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="rh_empleado" class="col-sm-3 col-form-label text-left">RH</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="rh_empleado" placeholder="RH">
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_banco_empleado" class="col-sm-3 col-form-label text-left">Banco</label>
          <div class="col-sm-9">
            <select class="custom-select" name="fkID_banco_empleado">
              <?php echo $empleadoInst->getSelectBancos(0); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="cuenta_empleado" class="col-sm-3 col-form-label text-left">No de cuenta</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" name="cuenta_empleado" placeholder="No de cuenta">
          </div>
        </div>
        <div class="form-group row">
          <label for="email_empleado" class="col-sm-3 col-form-label text-left">Email</label>
          <div class="col-sm-9">
              <input type="email" class="form-control" name="email_empleado" placeholder="Email">
          </div>
        </div>
        <div class="form-group row">
          <label for="cuenta_empleado" class="col-sm-3 col-form-label text-left">Foto</label>
          <div class="col-sm-9">
            <div class="custom-file">
                <input class="custom-file-input" id="url_lista" name="url_lista" type="file" />
                    <label class="custom-file-label" for="customFile">
                        Foto...
                    </label>
            </div>
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
              <input type="submit" class="btn btn-success" value="Guardar" id="crear_empleado">
          </div>
        </div>
    </form>
    </div>
</div>