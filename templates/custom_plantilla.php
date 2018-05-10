<div id="body-container" class="container custom">
    <div class="row d-flex justify-content-around categorias-head">
            <h1>¡Customiza tu propio set!</h1>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
            <h2>Selecciona tu instrumento</h2>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <div class="col-4 filtro">
            <div>
                <select class="custom-select custom-select-md">
                <option selected>Instrumento: </option>
                <option value="1">Guitarra Electrica</option>
                <option value="2">Guitarra Acustica</option>
                <option value="3">Guitarra Clasica</option>
                <option value="4">Bajo Electrico</option>
                <option value="5">Bajo Acustico</option>
                </select>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <div class="col-4 filtro">
            <div>
                <select class="custom-select custom-select-md">
                <option selected>Nº de Cuerdas: </option>
                <option value="1">6</option>
                <option value="2">7</option>
                <option value="8">8</option>
                </select>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <div class="col-4 left-strings">
            
            <div  class="cuerdas-izq">
                <select class="custom-select custom-select-md">
                <option selected>4 Cuerda </option>
                <option value="1">6</option>
                <option value="2">7</option>
                <option value="8">8</option>
                </select>
            </div>
            <div class="cuerdas-izq">
                <select class="custom-select custom-select-md">
                <option selected>5 Cuerda </option>
                <option value="1">6</option>
                <option value="2">7</option>
                <option value="8">8</option>
                </select>
            </div>
            <div  class="cuerdas-izq">
                <select class="custom-select custom-select-md">
                <option selected>6 Cuerda </option>
                <option value="1">6</option>
                <option value="2">7</option>
                <option value="8">8</option>
                </select>
            </div>
        </div>
        <div class="col-4">
            <img class="head-imagen" src="../images/fotos_tienda/head.png">
        </div>
        <div class="col-4 right-strings">
        <div class="cuerdas-der">
                <select class="custom-select custom-select-md">
                <option selected>3 Cuerda </option>
                <option value="1">6</option>
                <option value="2">7</option>
                <option value="8">8</option>
                </select>
            </div>
            <div class="cuerdas-der">
                <select class="custom-select custom-select-md">
                <option selected>2 Cuerda </option>
                <option value="1">6</option>
                <option value="2">7</option>
                <option value="8">8</option>
                </select>
            </div>
            <div class="cuerdas-der">
                <select class="custom-select custom-select-md">
                <option selected>1 Cuerda </option>
                <option value="1">6</option>
                <option value="2">7</option>
                <option value="8">8</option>
                </select>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <div class="col-12">
            <form action="#" method="post" id="login_form" class="formulario-custom">
                <label for="email">Nombre del Set</label> 
                <input type="text" class=" form-control" placeholder=""></br>
                <label for="email">Referencia del Set</label> 
                <input type="text" class=" form-control" placeholder=""></br>
                <label for="email">Tipo de Set (Sueve, Medio o Fuerte)</label> 
                <input type="text" class=" form-control" placeholder=""></br>
                <label for="email">Precio del Set</label> 
                <input type="text" class=" form-control" placeholder=""></br>
                <label for="email">Disponibilidad </label> 
                <input type="text" class=" form-control" placeholder=""></br>

                <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium"> 
                    <span>Crear Set</span> 
                </button>     
                <button type="submit" id="dd" name="SubmitLogin" class="button btn btn-default button-medium"> 
                    <span>Añadir al Carrito</span> 
                </button>            
                </form>

    </div>
</div>