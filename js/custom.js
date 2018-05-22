$(document).ready(function(){
    $('.custom-instru').on('click',function(){
        instr = $(this).val();
        console.log('-');
        $("option").remove('.ncuerdas');
        if(instr == 1){
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="6" data-cat="10">6</option><option class="ncuerdas" value="7" data-cat="10">7</option><option class="ncuerdas" value="8" data-cat="10">8</option>');
            $('.custom-ncuerdas').append(selects);
        }
        if(instr == 2){
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="9" data-cat="11">6</option>');
            $('.custom-ncuerdas').append(selects);
        }
        if(instr == 3){
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="10" data-cat="12">6</option>');
            $('.custom-ncuerdas').append(selects);
        }
        if(instr == 4){
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="11" data-cat="13">4</option><option class="ncuerdas" value="12"data-cat="13">5</option>');
            $('.custom-ncuerdas').append(selects);
        }
        if(instr == 5){
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="13" data-cat="14">4</option><option class="ncuerdas" value="14" data-cat="14">5</option>')
            
            $('.custom-ncuerdas').append(selects);
        }        
    });

    var eventDelegation = function(evento){
        $("#id_producto").val($(this).attr('id'));
        $("#buscar").val($(this).text());
};
    $('#buscadord').on('click','.nombre-producto', eventDelegation);
    
    $('.custom-cal').on('click',function(){
        let valor = $(this).val();
        console.log(valor);
    });

    $('.custom-ncuerdas').on('click',function(){
        
        let id_head = $(this).val();
        let id_categoria = 0;
        // GUITARRA ELECTRICA
        if(id_head == 6 ){
            id_categoria = 10;
            guitar6String(id_categoria,id_head);
        }
        if(id_head == 7 ){
            id_categoria = 10;
            guitar7String(id_categoria,id_head);
        }
        if(id_head == 8 ){
            id_categoria = 10;
            guitar8String(id_categoria,id_head);
        }
        // GUITARRA ACUSTICA
        if(id_head == 9){
            id_categoria = 11;
            guitar6String(id_categoria,id_head);
        }
        // GUITARRA CLASICA
        if(id_head == 10){
            id_categoria = 12;
            guitar6String(id_categoria,id_head);
        }
        // BAJO ELECTRICO
        if(id_head == 11 || id_head == 12){
            id_categoria = 13;
        }
        // BAJO ACUSTICO
        if(id_head == 13 || id_head == 14){
            id_categoria = 14;
        }

        console.log(id_categoria);
        
        $("div").remove('.cuerdas-izq');
        $("img").remove('.head-imagen');
        $("div").remove('.cuerdas-der');
        $("div").remove('.info-string');

        // RENDER DE LA IMAMGEN DEL CABECERO DE LA GUITARRA
        if(id_head == 6){
            var head = $('<img class="head-imagen" src="../images/fotos_tienda/head6.png">');
        }
        if(id_head == 7){
            var head = $('<img class="head-imagen" src="../images/fotos_tienda/head7.png">');
        }
        if(id_head == 8){
            var head = $('<img class="head-imagen" src="../images/fotos_tienda/head8.png">');
        }
        $('.custom-head').append(head);
        if(id_head != "Nº de Cuerdas:"){
            $(".custom-datos").css("display", "block");
        }
        // RENDER DE LA INFORMACION Y BOTONES DE CREAR CUSTOM SET Y AÑADIR AL CARRITO
        

    });
});

function guitar6String(categoria,id_head){
    setTimeout(function(){
        getStrings(3,categoria,id_head);
    }, 10);
    setTimeout(function(){
        getStrings(2,categoria,id_head);
    }, 50);
    setTimeout(function(){
        getStrings(1,categoria,id_head);
    }, 96);
    setTimeout(function(){
        getStrings(4,categoria,id_head);
    }, 10);
    setTimeout(function(){
        getStrings(5,categoria,id_head);
    }, 50);
    setTimeout(function(){
        getStrings(6,categoria,id_head);
    }, 135);
}
function guitar7String(categoria,id_head){
    guitar6String(categoria,id_head);
    setTimeout(function(){
        getStrings(7,categoria,id_head);
    }, 160);
}
function guitar8String(categoria,id_head){
    guitar7String(categoria,id_head);
    setTimeout(function(){
        getStrings(8,categoria,id_head);
    }, 160);
}
function getStrings(string,categoria, id_head){
    var parametros = {
        "id_categoria" : categoria,
        "cuerda": string
    };
    console.log("Categoria: " + categoria + " Cuerda: " + string);
    $.ajax({
        type: "POST",
        url: root + "/libs/calibre.php",
        data: parametros,
        success: function(data){
            console.log(data);
            mostrarCalibres(data,string,id_head);
        }
    });
}
function mostrarCalibres(data,cuerda,id_head){
    
    $(".left-strings").css("display", "block");
    $(".custom-head").css("display", "block");
    $(".right-strings").css("display", "block");
    
    // BAJO ACUSTICO
    if(id_head == 14) {
        
    }
    if(id_head == 13) {
        
    }
    //BAJO ELECTRICO
    if(id_head == 12) {
        
    }
    if(id_head == 11) {

    }
    // GUITARRA CLASICA
    if(id_head == 10){
        if(cuerda == 1){
            renderRightString1(data, cuerda);
        }
        if(cuerda == 2){
            renderRightString2(data, cuerda);
        }
        if(cuerda == 3){
            renderRightString3(data, cuerda);
        }
        if(cuerda == 4){
            renderLeftString4(data, cuerda);
        }
        if(cuerda == 5){
            renderLeftString5(data, cuerda);
        }
        if(cuerda == 6){
            renderLeftString6(data, cuerda);
        }
    }
    // GUITARRA ACUSTICA
    if(id_head == 9){
        if(cuerda == 1){
            renderRightString1(data, cuerda);
        }
        if(cuerda == 2){
            renderRightString2(data, cuerda);
        }
        if(cuerda == 3){
            renderRightString3(data, cuerda);
        }
        if(cuerda == 4){
            renderLeftString4(data, cuerda);
        }
        if(cuerda == 5){
            renderLeftString5(data, cuerda);
        }
        if(cuerda == 6){
            renderLeftString6(data, cuerda);
        }
    }
    // GUITARRA ELECTRICA
    if(id_head == 8){
        if(cuerda == 1){
            renderRightString1(data, cuerda);
        }
        if(cuerda == 2){
            renderRightString2(data, cuerda);
        }
        if(cuerda == 3){
            setTimeout(function(){
                renderRightString3(data, cuerda);
            }, 20);        }
        if(cuerda == 4){
            renderRightString4(data, cuerda);
        }
        if(cuerda == 5){
            renderLeftString5(data, cuerda);
        }
        if(cuerda == 6){
            renderLeftString6(data, cuerda);
        }
        if(cuerda == 7){
            renderLeftString7(data, cuerda);
        }
        if(cuerda == 8){
            renderLeftString8(data, cuerda);
        }
    }
    if(id_head == 7){
        if(cuerda == 1){
            renderRightString1(data, cuerda);
        }
        if(cuerda == 2){
            renderRightString2(data, cuerda);
        }
        if(cuerda == 3){
            renderRightString3(data, cuerda);
        }
        if(cuerda == 4){
            renderLeftString4(data, cuerda);
        }
        if(cuerda == 5){
            renderLeftString5(data, cuerda);
        }
        if(cuerda == 6){
            renderLeftString6(data, cuerda);
        }
        if(cuerda == 7){
            renderLeftString7(data, cuerda);
        }
    }
    if(id_head == 6){
        if(cuerda == 1){
            renderRightString1(data, cuerda);
        }
        if(cuerda == 2){
            renderRightString2(data, cuerda);
        }
        if(cuerda == 3){
            renderRightString3(data, cuerda);
        }
        if(cuerda == 4){
            renderLeftString4(data, cuerda);
        }
        if(cuerda == 5){
            renderLeftString5(data, cuerda);
        }
        if(cuerda == 6){
            renderLeftString6(data, cuerda);
        }
    }
}
function renderLeftString8(data, cuerda){
    let strIni = $('<div  class="cuerdas-izq">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal8">'+
        '<option selected id="strName8"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName8').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal8').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.left-strings').append(infoString);
}
function renderLeftString7(data, cuerda){
    let strIni = $('<div  class="cuerdas-izq">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal7">'+
        '<option selected id="strName7"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName7').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal7').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.left-strings').append(infoString);
}
function renderLeftString6(data, cuerda){
    let strIni = $('<div  class="cuerdas-izq">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal6">'+
        '<option selected id="strName6"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName6').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal6').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.left-strings').append(infoString);
}
function renderLeftString5(data, cuerda){
    let strIni = $('<div  class="cuerdas-izq">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal5">'+
        '<option selected id="strName5"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName5').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal5').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.left-strings').append(infoString);
}
function renderLeftString4(data, cuerda){
    let strIni = $('<div  class="cuerdas-izq">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal4">'+
        '<option selected id="strName4"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName4').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal4').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.left-strings').append(infoString);
}
function renderRightString4(data, cuerda){
    let strIni = $('<div  class="cuerdas-der">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal4">'+
        '<option selected id="strName4"> Cuerda </option>'
    );
    $('.right-strings').append(strIni);
    $('#strName4').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal4').append(string);
    }
    let strFin = $('</select></div>');
    $('.right-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.right-strings').append(infoString);
}
function renderRightString3(data, cuerda){
    let strIni = $('<div  class="cuerdas-der">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal3">'+
        '<option selected id="strName3"> Cuerda </option>'
    );
    $('.right-strings').append(strIni);
    $('#strName3').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal3').append(string);
    }
    let strFin = $('</select></div>');
    $('.right-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.right-strings').append(infoString);
}
function renderRightString2(data, cuerda){
    let strIni = $('<div  class="cuerdas-der">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal2">'+
        '<option selected id="strName2"> Cuerda </option>'
    );
    $('.right-strings').append(strIni);
    $('#strName2').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal2').append(string);
    }
    let strFin = $('</select></div>');
    $('.right-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.right-strings').append(infoString);
}
function renderRightString1(data, cuerda){
    let strIni = $('<div  class="cuerdas-der">'+
    '<select class="custom-select custom-select-md custom-cal" id="custom-cal1">'+
        '<option selected id="strName1"> Cuerda </option>'
    );
    $('.right-strings').append(strIni);
    $('#strName1').text(cuerda + " Cuerda");

    for(var producto in data){

    if(data[producto]['calibre'])
    //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
    var string = $('<option class="infots" value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
    $('#custom-cal1').append(string);
    }
    let strFin = $('</select></div>');
    $('.right-strings').append(strFin);
    let infoString = $('<div class="info-string"><span>Ernie Ball</span><span>EB2221</span><span>Calibre 09</span><span>2€</span></div>');
    $('.right-strings').append(infoString);
}