<?php $datosEmpleado = $empleadoInst->getEmpleadoUsuario($usuario);?>
<div class="card mb-3">
  <div class="card-header">
  	<label class="font-weight-bold text-left">Datos personales empleado - Eliminar</label>
  </div>
  <div class="card-body">
    <form>
        <div class="form-group row">
          <label for="ape1_empleado" class="col-sm-3 col-form-label text-left">Primer apellido</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="ape1_empleado" value="<?php echo $datosEmpleado[0]["ape1_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="ape2_empleado" class="col-sm-3 col-form-label text-left">Segundo apellido</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="ape2_empleado" value="<?php echo $datosEmpleado[0]["ape2_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="nombre_empleado" class="col-sm-3 col-form-label text-left">Nombres</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="nombre_empleado" value="<?php echo $datosEmpleado[0]["nombre_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="fecha_nac_empleado" class="col-sm-3 col-form-label text-left">Fecha de nacimiento</label>
          <div class="col-sm-9">
              <input type="date" class="form-control" id="fecha_nac_empleado" value="<?php echo $datosEmpleado[0]["fecha_nac_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_genero_empleado" class="col-sm-3 col-form-label text-left">Genero</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectGenero($datosEmpleado[0]["fkID_genero_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="cedula_empleado" class="col-sm-3 col-form-label text-left">Cedula empleado</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="cedula_empleado" value="<?php echo $datosEmpleado[0]["cedula_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_nacionalidad_empleado" class="col-sm-3 col-form-label text-left">Nacionalidad</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectNacionalidad($datosEmpleado[0]["fkID_nacionalidad_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_civil_empleado" class="col-sm-3 col-form-label text-left">Estado civil</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectEstadoCivil($datosEmpleado[0]["fkID_civil_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="direccion_empleado" class="col-sm-3 col-form-label text-left">Direccion actual</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="direccion_empleado" value="<?php echo $datosEmpleado[0]["direccion_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_depar_empleado" class="col-sm-3 col-form-label text-left">Departamento de nacimiento</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectDepartamento($datosEmpleado[0]["fkID_depar_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_ciudad_empleado" class="col-sm-3 col-form-label text-left">Ciudad de nacimiento</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectCiudad($datosEmpleado[0]["fkID_ciudad_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="telefono_empleado" class="col-sm-3 col-form-label text-left">Telefono</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="telefono_empleado" value="<?php echo $datosEmpleado[0]["telefono_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="celular_empleado" class="col-sm-3 col-form-label text-left">Celular</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="celular_empleado" value="<?php echo $datosEmpleado[0]["celular_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_eps_empleado" class="col-sm-3 col-form-label text-left">EPS</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectEps($datosEmpleado[0]["fkID_eps_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_pension_empleado" class="col-sm-3 col-form-label text-left">Fondo de pensiones</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectPension($datosEmpleado[0]["fkID_pension_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_cesantias_empleado" class="col-sm-3 col-form-label text-left">Fondo de cesantias</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectCesantias($datosEmpleado[0]["fkID_cesantias_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="rh_empleado" class="col-sm-3 col-form-label text-left">RH</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="rh_empleado" value="<?php echo $datosEmpleado[0]["rh_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="fkID_banco_empleado" class="col-sm-3 col-form-label text-left">Banco</label>
          <div class="col-sm-9">
            <select class="custom-select" disabled >
              <?php echo $empleadoInst->getSelectBancos($datosEmpleado[0]["fkID_banco_empleado"]); ?>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="cuenta_empleado" class="col-sm-3 col-form-label text-left">No de cuenta</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="cuenta_empleado" value="<?php echo $datosEmpleado[0]["cuenta_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="email_empleado" class="col-sm-3 col-form-label text-left">Email</label>
          <div class="col-sm-9">
              <input type="email" class="form-control" id="email_empleado" value="<?php echo $datosEmpleado[0]["email_empleado"] ?>" readonly>
          </div>
        </div>
        <div class="form-group row">
          <label for="foto_empleado" class="col-sm-3 col-form-label text-left">Foto</label>
          <div class="col-sm-9 text-left">
            <img src="<?php echo '../../imagenes/' . $datosEmpleado[0]["foto_empleado"] ?>">
          </div>
        </div>
        <div class="form-group row">
          <div class="col-md-12">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#exampleModal">
              Eliminar
            </button>

            <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Eliminar empleado</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ¿Realmente desea eliminar el registro?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-success" id="eliminar_empleado">Confirmar</button>
      </div>
    </div>
  </div>
</div>
          </div>
        </div>
    </form>
  </div>
</div>
