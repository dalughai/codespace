
let id_usuario = 0;
let mySet = new Object();
mySet.cuerda1 = 0;
mySet.cuerda2 = 0;
mySet.cuerda3 = 0;
mySet.cuerda4 = 0;
mySet.cuerda5 = 0;
mySet.cuerda6 = 0;
mySet.cuerda7 = 0;
mySet.cuerda8 = 0;
mySet.descripcion = "Custom Set compuesto por: <br/><br/>";

let id_ghead = 0;
let paseCuerda1 = false;
let paseCuerda2 = false;
let paseCuerda3 = false;
let paseCuerda4 = false;
let paseCuerda5 = false;
let paseCuerda6 = false;
let paseCuerda7 = false;
let paseCuerda8 = false;

$(document).ready(function () {
    $('.custom-instru').on('click', function () {
        instr = $(this).val();
        id_usuario = $('.id_usuario').val();
        //console.log(id_usuario);
        $("option").remove('.ncuerdas');
        if (instr == 1) {
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="6" data-cat="10">6</option><option class="ncuerdas" value="7" data-cat="10">7</option><option class="ncuerdas" value="8" data-cat="10">8</option>');
            $('.custom-ncuerdas').append(selects);
        }
        if (instr == 2) {
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="9" data-cat="11">6</option>');
            $('.custom-ncuerdas').append(selects);
        }
        if (instr == 3) {
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="10" data-cat="12">6</option>');
            $('.custom-ncuerdas').append(selects);
        }
        if (instr == 4) {
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="11" data-cat="13">4</option><option class="ncuerdas" value="12"data-cat="13">5</option>');
            $('.custom-ncuerdas').append(selects);
        }
        if (instr == 5) {
            $(".custom-ncuerdas").css("display", "block");
            var selects = $('<option class="ncuerdas" value="13" data-cat="14">4</option><option class="ncuerdas" value="14" data-cat="14">5</option>')

            $('.custom-ncuerdas').append(selects);
        }
    });
    $('.custom-ncuerdas').on('click', function () {

        let id_head = $(this).val();
        let id_categoria = 0;
        paseCuerda1 = false;
        paseCuerda2 = false;
        paseCuerda3 = false;
        paseCuerda4 = false;
        paseCuerda5 = false;
        paseCuerda6 = false;
        paseCuerda7 = false;
        paseCuerda8 = false;
        // GUITARRA ELECTRICA
        if (id_head == 6) {
            id_categoria = 10;
            guitar6String(id_categoria, id_head);
        }
        if (id_head == 7) {
            id_categoria = 10;
            guitar7String(id_categoria, id_head);
        }
        if (id_head == 8) {
            id_categoria = 10;
            guitar8String(id_categoria, id_head);
        }
        // GUITARRA ACUSTICA
        if (id_head == 9) {
            id_categoria = 11;
            guitar6String(id_categoria, id_head);
        }
        // GUITARRA CLASICA
        if (id_head == 10) {
            id_categoria = 12;
            guitar6String(id_categoria, id_head);
        }
        // BAJO ELECTRICO
        if (id_head == 11 || id_head == 12) {
            id_categoria = 13;
        }
        // BAJO ACUSTICO
        if (id_head == 13 || id_head == 14) {
            id_categoria = 14;
        }

        // //console.log(id_categoria);

        $("div").remove('.cuerdas-izq');
        $("img").remove('.head-imagen');
        $("div").remove('.cuerdas-der');
        $("div").remove('.info-string');

        // RENDER DE LA IMAMGEN DEL CABECERO DE LA GUITARRA
        if (id_head == 6) {
            var head = $('<img class="head-imagen" src="../images/fotos_tienda/head6.png">');
        }
        if (id_head == 7) {
            var head = $('<img class="head-imagen" src="../images/fotos_tienda/head7.png">');
        }
        if (id_head == 8) {
            var head = $('<img class="head-imagen" src="../images/fotos_tienda/head8.png">');
        }
        $('.custom-head').append(head);
        if (id_head != "Nº de Cuerdas:") {
            //$(".custom-datos").css("display", "block");
        }
        // RENDER DE LA INFORMACION Y BOTONES DE CREAR CUSTOM SET Y AÑADIR AL CARRITO



    });
    $('.crear-set').on('click', function () {
        if (id_ghead == 6) {
            var parametros = {
                "id_head": id_ghead,
                "id_usuario": id_usuario,
                "cuerda_1": mySet.cuerda1,
                "cuerda_2": mySet.cuerda2,
                "cuerda_3": mySet.cuerda3,
                "cuerda_4": mySet.cuerda4,
                "cuerda_5": mySet.cuerda5,
                "cuerda_6": mySet.cuerda6,
                "descripcion": mySet.descripcion
            };
            crearSet(parametros);
        }
        if (id_ghead == 7) {
            var parametros = {
                "id_head": id_ghead,
                "id_usuario": id_usuario,
                "cuerda_1": mySet.cuerda1,
                "cuerda_2": mySet.cuerda2,
                "cuerda_3": mySet.cuerda3,
                "cuerda_4": mySet.cuerda4,
                "cuerda_5": mySet.cuerda5,
                "cuerda_6": mySet.cuerda6,
                "cuerda_7": mySet.cuerda7,
                "descripcion": mySet.descripcion
            };
            crearSet(parametros);
        }
        if (id_ghead == 8) {
            var parametros = {
                "id_head": id_ghead,
                "id_usuario": id_usuario,
                "cuerda_1": mySet.cuerda1,
                "cuerda_2": mySet.cuerda2,
                "cuerda_3": mySet.cuerda3,
                "cuerda_4": mySet.cuerda4,
                "cuerda_5": mySet.cuerda5,
                "cuerda_6": mySet.cuerda6,
                "cuerda_7": mySet.cuerda7,
                "cuerda_8": mySet.cuerda8,
                "descripcion": mySet.descripcion
            };
            crearSet(parametros);
        }
        //console.log("Set COMPLETO");
    })
    var eventDelegation = function (evento) {
        //$("#id_producto").val($(this).val());
        let miCuerda = $(this).val().split(",");


        if (miCuerda[0] == "1 Cuerda") { paseCuerda1 = false; $(".custom-datos").css("display", "none"); }
        if (miCuerda[0] == "2 Cuerda") { paseCuerda2 = false; $(".custom-datos").css("display", "none"); }
        if (miCuerda[0] == "3 Cuerda") { paseCuerda3 = false; $(".custom-datos").css("display", "none"); }
        if (miCuerda[0] == "4 Cuerda") { paseCuerda4 = false; $(".custom-datos").css("display", "none"); }
        if (miCuerda[0] == "5 Cuerda") { paseCuerda5 = false; $(".custom-datos").css("display", "none"); }
        if (miCuerda[0] == "6 Cuerda") { paseCuerda6 = false; $(".custom-datos").css("display", "none"); }
        if (miCuerda[0] == "7 Cuerda") { paseCuerda7 = false; $(".custom-datos").css("display", "none"); }
        if (miCuerda[0] == "8 Cuerda") { paseCuerda8 = false; $(".custom-datos").css("display", "none"); }

        if (miCuerda[5] != undefined) {
            var clase = "info-span" + miCuerda[5];
            $("span").remove("." + clase);
            var dat = $('<span class="' + clase + '">' + miCuerda[1] + '</span><span class="' + clase + '">' + miCuerda[2] + '</span><span class="' + clase + '">Calibre ' + miCuerda[4] + '</span><span class="' + clase + '">' + miCuerda[3] + '€</span>');
            $("#info-string-" + miCuerda[5]).css("display", "block");
            $('#info-string-' + miCuerda[5]).append(dat);
            if (miCuerda[5] == 1) { paseCuerda1 = true; mySet.cuerda1 = miCuerda[0]; mySet.descripcion = mySet.descripcion + "    1. " + miCuerda[7] + "<br/>"; }
            if (miCuerda[5] == 2) { paseCuerda2 = true; mySet.cuerda2 = miCuerda[0]; mySet.descripcion = mySet.descripcion + "    2. " + miCuerda[7] + "<br/>"; }
            if (miCuerda[5] == 3) { paseCuerda3 = true; mySet.cuerda3 = miCuerda[0]; mySet.descripcion = mySet.descripcion + "    3. " + miCuerda[7] + "<br/>"; }
            if (miCuerda[5] == 4) { paseCuerda4 = true; mySet.cuerda4 = miCuerda[0]; mySet.descripcion = mySet.descripcion + "    4. " + miCuerda[7] + "<br/>"; }
            if (miCuerda[5] == 5) { paseCuerda5 = true; mySet.cuerda5 = miCuerda[0]; mySet.descripcion = mySet.descripcion + "    5. " + miCuerda[7] + "<br/>"; }
            if (miCuerda[5] == 6) { paseCuerda6 = true; mySet.cuerda6 = miCuerda[0]; mySet.descripcion = mySet.descripcion + "    6. " + miCuerda[7] + "<br/>"; }
            if (miCuerda[5] == 7) { paseCuerda7 = true; mySet.cuerda7 = miCuerda[0]; mySet.descripcion = mySet.descripcion + "    7. " + miCuerda[7] + "<br/>"; }
            if (miCuerda[5] == 8) { paseCuerda8 = true; mySet.cuerda8 = miCuerda[0]; mySet.descripcion = mySet.descripcion + "    8. " + miCuerda[7] + "<br/>"; }
        }


        if (miCuerda[6] == 6) {
            if (paseCuerda1 == true && paseCuerda2 == true && paseCuerda3 == true && paseCuerda4 == true && paseCuerda5 == true && paseCuerda6 == true) {
                $(".boton").css("display", "block");
                id_ghead = miCuerda[6];
            }
        }
        if (miCuerda[6] == 7) {
            if (paseCuerda1 == true && paseCuerda2 == true && paseCuerda3 == true && paseCuerda4 == true && paseCuerda5 == true && paseCuerda6 == true && paseCuerda7 == true) {
                $(".boton").css("display", "block");
                id_ghead = miCuerda[6];
            }
        }
        if (miCuerda[6] == 8) {
            if (paseCuerda1 == true && paseCuerda2 == true && paseCuerda3 == true && paseCuerda4 == true && paseCuerda5 == true && paseCuerda6 == true && paseCuerda7 == true && paseCuerda8 == true) {
                $(".boton").css("display", "block");
                id_ghead = miCuerda[6];
            }
        }
    };
    $('.right-strings').on('click', '.custom-cal', eventDelegation);
    $('.left-strings').on('click', '.custom-cal', eventDelegation);



});

function renderInfo() {

}

function bass4String(categoria, id_head) {
    setTimeout(function () {
        getStrings(3, categoria, id_head);
    }, 10);
    setTimeout(function () {
        getStrings(2, categoria, id_head);
    }, 50);
    setTimeout(function () {
        getStrings(1, categoria, id_head);
    }, 96);
    setTimeout(function () {
        getStrings(4, categoria, id_head);
    }, 10);
}
function bass5String(categoria, id_head) {
    setTimeout(function () {
        getStrings(3, categoria, id_head);
    }, 10);
    setTimeout(function () {
        getStrings(2, categoria, id_head);
    }, 50);
    setTimeout(function () {
        getStrings(1, categoria, id_head);
    }, 96);
    setTimeout(function () {
        getStrings(4, categoria, id_head);
    }, 10);
    setTimeout(function () {
        getStrings(5, categoria, id_head);
    }, 50);
}
function guitar6String(categoria, id_head) {
    setTimeout(function () {
        getStrings(3, categoria, id_head);
    }, 0);
    setTimeout(function () {
        getStrings(2, categoria, id_head);
    }, 60);
    setTimeout(function () {
        getStrings(1, categoria, id_head);
    }, 135);
    setTimeout(function () {
        getStrings(4, categoria, id_head);
    }, 10);
    setTimeout(function () {
        getStrings(5, categoria, id_head);
    }, 70);
    setTimeout(function () {
        getStrings(6, categoria, id_head);
    }, 155);
} 4
function guitar7String(categoria, id_head) {
    guitar6String(categoria, id_head);
    setTimeout(function () {
        getStrings(7, categoria, id_head);
    }, 160);
}
function guitar8String(categoria, id_head) {
    guitar7String(categoria, id_head);
    setTimeout(function () {
        getStrings(8, categoria, id_head);
    }, 500);
}
function getStrings(string, categoria, id_head) {
    var parametros = {
        "id_categoria": categoria,
        "cuerda": string
    };
    $.ajax({
        type: "POST",
        url: root + "/libs/calibre.php",
        data: parametros,
        success: function (data) {
            mostrarCalibres(data, string, id_head);
        }
    });
}
function mostrarCalibres(data, cuerda, id_head) {

    $(".left-strings").css("display", "block");
    $(".custom-head").css("display", "block");
    $(".right-strings").css("display", "block");

    // BAJO ACUSTICO
    if (id_head == 14) {

    }
    if (id_head == 13) {

    }
    //BAJO ELECTRICO
    if (id_head == 12) {

    }
    if (id_head == 11) {

    }
    // GUITARRA CLASICA
    if (id_head == 10) {
        if (cuerda == 1) {
            renderRightString1(data, cuerda, id_head);
        }
        if (cuerda == 2) {
            renderRightString2(data, cuerda, id_head);
        }
        if (cuerda == 3) {
            renderRightString3(data, cuerda, id_head);
        }
        if (cuerda == 4) {
            renderLeftString4(data, cuerda, id_head);
        }
        if (cuerda == 5) {
            renderLeftString5(data, cuerda, id_head);
        }
        if (cuerda == 6) {
            renderLeftString6(data, cuerda, id_head);
        }
    }
    // GUITARRA ACUSTICA
    if (id_head == 9) {
        if (cuerda == 1) {
            renderRightString1(data, cuerda, id_head);
        }
        if (cuerda == 2) {
            renderRightString2(data, cuerda, id_head);
        }
        if (cuerda == 3) {
            renderRightString3(data, cuerda, id_head);
        }
        if (cuerda == 4) {
            renderLeftString4(data, cuerda, id_head);
        }
        if (cuerda == 5) {
            renderLeftString5(data, cuerda, id_head);
        }
        if (cuerda == 6) {
            renderLeftString6(data, cuerda, id_head);
        }
    }
    // GUITARRA ELECTRICA
    if (id_head == 8) {
        if (cuerda == 1) {
            renderRightString1(data, cuerda, id_head);
        }
        if (cuerda == 2) {
            renderRightString2(data, cuerda, id_head);
        }
        if (cuerda == 3) {
            setTimeout(function () {
                renderRightString3(data, cuerda, id_head);
            }, 20);
        }
        if (cuerda == 4) {
            renderRightString4(data, cuerda, id_head);
        }
        if (cuerda == 5) {
            renderLeftString5(data, cuerda, id_head);
        }
        if (cuerda == 6) {
            renderLeftString6(data, cuerda, id_head);
        }
        if (cuerda == 7) {
            renderLeftString7(data, cuerda, id_head);
        }
        if (cuerda == 8) {
            renderLeftString8(data, cuerda, id_head);
        }
    }
    if (id_head == 7) {
        if (cuerda == 1) {
            renderRightString1(data, cuerda, id_head);
        }
        if (cuerda == 2) {
            renderRightString2(data, cuerda, id_head);
        }
        if (cuerda == 3) {
            renderRightString3(data, cuerda, id_head);
        }
        if (cuerda == 4) {
            renderLeftString4(data, cuerda, id_head);
        }
        if (cuerda == 5) {
            renderLeftString5(data, cuerda, id_head);
        }
        if (cuerda == 6) {
            renderLeftString6(data, cuerda, id_head);
        }
        if (cuerda == 7) {
            renderLeftString7(data, cuerda, id_head);
        }
    }
    if (id_head == 6) {
        if (cuerda == 1) {
            renderRightString1(data, cuerda, id_head);
        }
        if (cuerda == 2) {
            renderRightString2(data, cuerda, id_head);
        }
        if (cuerda == 3) {
            renderRightString3(data, cuerda, id_head);
        }
        if (cuerda == 4) {
            renderLeftString4(data, cuerda, id_head);
        }
        if (cuerda == 5) {
            renderLeftString5(data, cuerda, id_head);
        }
        if (cuerda == 6) {
            renderLeftString6(data, cuerda, id_head);
        }
    }
}
function renderLeftString8(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-izq">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal8">' +
        '<option selected id="strName8"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName8').text(cuerda + " Cuerda");

    for (var producto in data) {
        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 8, id_head, data[producto]['descripcion']);
        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal8').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInLeft animated"" id="info-string-8"><span class="info-span8"></span><span class="info-span8"></span><span class="info-span8"></span><span class="info-span8"></span></div>');
    $('.left-strings').append(infoString);
}
function renderLeftString7(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-izq">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal7">' +
        '<option selected id="strName7"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName7').text(cuerda + " Cuerda");

    for (var producto in data) {
        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 7, id_head, data[producto]['descripcion']);
        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal7').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInLeft animated"" id="info-string-7"><span class="info-span7"></span><span class="info-span7"></span><span class="info-span7"></span><span class="info-span7"></span></div>');
    $('.left-strings').append(infoString);
}
function renderLeftString6(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-izq">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal6">' +
        '<option selected id="strName6"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName6').text(cuerda + " Cuerda");

    for (var producto in data) {
        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 6, id_head, data[producto]['descripcion']);
        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal6').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInLeft animated"" id="info-string-6"><span class="info-span6"></span><span class="info-span6"></span><span class="info-span6"></span><span class="info-span6"></span></div>');
    $('.left-strings').append(infoString);
}
function renderLeftString5(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-izq">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal5">' +
        '<option selected id="strName5"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName5').text(cuerda + " Cuerda");

    for (var producto in data) {
        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 5, id_head, data[producto]['descripcion']);
        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal5').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInLeft animated"" id="info-string-5"><span class="info-span5"></span><span class="info-span5"></span><span class="info-span5"></span><span class="info-span5"></span></div>');
    $('.left-strings').append(infoString);
}
function renderLeftString4(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-izq">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal4">' +
        '<option selected id="strName4"> Cuerda </option>'
    );
    $('.left-strings').append(strIni);
    $('#strName4').text(cuerda + " Cuerda");

    for (var producto in data) {
        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 4, id_head, data[producto]['descripcion']);
        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal4').append(string);
    }
    let strFin = $('</select></div>');
    $('.left-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInLeft animated"" id="info-string-4"><span class="info-span4"></span><span class="info-span4"></span><span class="info-span4"></span><span class="info-span4"></span></div>');
    $('.left-strings').append(infoString);
}
function renderRightString4(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-der">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal4">' +
        '<option selected id="strName4"> Cuerda </option>'
    );
    $('.right-strings').append(strIni);
    $('#strName4').text(cuerda + " Cuerda");

    for (var producto in data) {
        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 4, id_head, data[producto]['descripcion']);

        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal4').append(string);
    }
    let strFin = $('</select></div>');
    $('.right-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInRight animated"" id="info-string-4"><span class="info-span4"></span><span class="info-span4"></span><span class="info-span4"></span><span class="info-span4"></span></div>');
    $('.right-strings').append(infoString);
}
function renderRightString3(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-der">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal3">' +
        '<option selected id="strName3"> Cuerda </option>'
    );
    $('.right-strings').append(strIni);
    $('#strName3').text(cuerda + " Cuerda");

    for (var producto in data) {
        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 3, id_head, data[producto]['descripcion']);
        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal3').append(string);
    }
    let strFin = $('</select></div>');
    $('.right-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInRight animated"" id="info-string-3"><span class="info-span3"></span><span class="info-span3"></span><span class="info-span3"></span><span class="info-span3"></span></div>');
    $('.right-strings').append(infoString);
}
function renderRightString2(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-der">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal2">' +
        '<option selected id="strName2"> Cuerda </option>'
    );
    $('.right-strings').append(strIni);
    $('#strName2').text(cuerda + " Cuerda");

    for (var producto in data) {

        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 2, id_head, data[producto]['descripcion']);
        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal2').append(string);
    }
    let strFin = $('</select></div>');
    $('.right-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInRight animated"" id="info-string-2"><span class="info-span2"></span><span class="info-span2"></span><span class="info-span2"></span><span class="info-span2"></span></div>');
    $('.right-strings').append(infoString);
}

function renderRightString1(data, cuerda, id_head) {
    let strIni = $('<div  class="cuerdas-der">' +
        '<select class="custom-select custom-select-md custom-cal" id="custom-cal1">' +
        '<option selected id="strName1" data-pase="-1"> Cuerda </option>'
    );
    $('.right-strings').append(strIni);
    $('#strName1').text(cuerda + " Cuerda");

    for (var producto in data) {
        var miCuerda = new Array(data[producto]['id'], data[producto]['marca'], data[producto]['referencia'], data[producto]['precio_iva'], data[producto]['calibre'], 1, id_head, data[producto]['descripcion']);

        if (data[producto]['calibre'])
            //let string = $('<option value=""></option>').val(data[producto]['id']).text(data[producto]['nombre'] + " 0" + data[producto]['calibre']);
            var string = $('<option class="infots" value=""></option>').val(miCuerda).text(data[producto]['nombre'] + " " + data[producto]['descripcion_corta']);
        $('#custom-cal1').append(string);
    }
    let strFin = $('</select></div>');
    $('.right-strings').append(strFin);
    let infoString = $('<div class="info-string fadeInRight animated"" id="info-string-1"><span class="info-span1"></span><span class="info-span1"></span><span class="info-span1"></span><span class="info-span1"></span></div>');
    $('.right-strings').append(infoString);
}

function crearSet(parametros) {
    $.ajax({
        type: "POST",
        url: root + "/libs/insertar_set.php",
        data: parametros,
        success: function (data) {
            $(".custom-datos").css("display", "block");
            $(".info-nombre").val(data[0].nombre);
            $(".info-ref").val(data[0].referencia);
            $(".info-pvp").val(data[0].precio_iva + "€");
            if (data[0].stock == -1) {
                $(".info-disponible").val("4-5 Dias");
            } else {
                $(".info-disponible").val("Envio Inmediato");
            }
            $(".crear-set").css("display", "none");
            $(".add-set-carrito").css("display", "block");
            $(".add-set-carrito").attr('data-producto-id', data[0].id_prod);
            $(".add-set-carrito").attr('data-imagen-producto', data[0].imagen);
            $(".add-set-carrito").attr('data-producto-precio', data[0].precio_iva);
            $(".add-set-carrito").attr('data-producto-nombre', data[0].nombre);

        }
    });


}