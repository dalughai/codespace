<div id="body-container" class="container custom">
    <div class="row d-flex justify-content-around categorias-head">
            <h1>¡Customiza tu propio set!</h1>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
            <h2>Selecciona tu instrumento</h2>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <div class="filtro">
            <div>
                <select class="custom-select custom-select-md custom-instru">
                <option selected>Instrumento: </option>
                <option class="custom-instru" value="1">Guitarra Electrica</option>
                <option class="custom-instru" value="2">Guitarra Acustica</option>
                <option class="custom-instru" value="3">Guitarra Clasica</option>
                <option class="custom-instru" value="4">Bajo Electrico</option>
                <option class="custom-instru" value="5">Bajo Acustico</option>
                </select>
            </div>
            <div class="custom-div-ncuerdas">
                <select class="custom-select custom-select-md custom-ncuerdas">
                <option selected>Nº de Cuerdas: </option>

                </select>
            </div>
        </div>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <div class="col-4 left-strings">
        
        </div>
        <div class="col-4 custom-head">

        </div>
        <div class="col-4 right-strings">

        
        </div>
    </div>
    <div class="row d-flex justify-content-around categorias-head">
        <div class="col-12">
            <form action="#" method="post" id="login_form" class="custom-datos">
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="email">Nombre del Set</label> 
                        <input type="text" class=" form-control" readonly="readonly" placeholder="TSS CUSTOM SET TSS0601 09-052"></br>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="email">Referencia del Set</label> 
                        <input type="text" class=" form-control" readonly="readonly" placeholder="TSS0601"></br>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label for="email">Precio del Set</label> 
                        <input type="text" class=" form-control" readonly="readonly" placeholder="12 €"></br>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="email">Disponibilidad </label> 
                        <input type="text" class=" form-control" readonly="readonly" placeholder="ENTREGA INMEDIATA "></br>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-12 mb-3">    
                        <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium"> 
                            <span>Crear Set</span> 
                        </button> 
                        <button type="submit" id="dd" name="SubmitLogin" class="button btn btn-default button-medium"> 
                            <span>Añadir al Carrito</span> 
                        </button>     
                    </div>
                </div>
                </form>

    </div>
</div>