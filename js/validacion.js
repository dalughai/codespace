$(document).ready(function() {
    $("#registro").validate({

        rules: {
            nombre: {
                required: true,
                minlength: 3
            },
            dni: {
                required: true,
                minlength: 9
            },
            apellido1: {
                required: true,
                minlength: 3
            },
            apellido2: {
                required: true,
                minlength: 3
            },
            email: {
                required: true,
                minlength: 5
            },
            password: {
                required: true,
                minlength: 6,
                maxlength: 12
            },
            repassword: {
                required: true,
                equalTo: '#password'
            },
            codigopostal: {
                required: true,
                minlength: 5
            },
            ciudad: {
                required: true,
                minlength: 5
            },
            provincia: {
                required: true,
                minlength: 5
            },
            comunidad: {
                required: true,
                minlength: 5
            },
            direccion: {
                required: true,
                minlength: 5
            },
            telefono: {
                required: true,
                minlength: 5
            },
            sexo: {
                required: true
            },
            terminos: {
                required: true
            }
        },
        messages: {
            nombre: "Debes introducir al menos 3 caracteres",
            email: "Debes introducir al menos 8 caracteres",
            apellido1: "Debes introducir al menos 3 caracteres",
            apellido2: "Debes introducir al menos 3 caracteres",
            password: "Debes introducir al menos 6 caracteres",
            repassword: "No coinciden las contraseñas",
            telefono: "Debes introducir al menos 9 caracteres"
        }

    });

});