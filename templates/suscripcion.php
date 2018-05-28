<div class="container custom">
        <div class="row d-flex justify-content-around categorias-head">
                <h1>¡Crea tu String Box!</h1>
        </div>
        <div class="row d-flex justify-content-around categorias-head">
                <h2>Selecciona la fecha de entrega</h2>
        </div>
        <div>
        <p>Date: <input type="text" id="datepicker"></p>

        </div>
        
</div>

<script>
        $(function () {
        $.datepicker.setDefaults($.datepicker.regional["es"]);

        $("#datepicker").datepicker({
        firstDay: 1
        });
        });
        
</script>