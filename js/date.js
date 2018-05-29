function isValidDate(day,month,year)
{
    var dteDate;

    // En javascript, el mes empieza en la posicion 0 y termina en la 11
    // siendo 0 el mes de enero
    // Por esta razon, tenemos que restar 1 al mes
    month=month-1;
    // Establecemos un objeto Data con los valore recibidos
    // Los parametros son: año, mes, dia, hora, minuto y segundos
    // getDate(); devuelve el dia como un entero entre 1 y 31
    // getDay(); devuelve un num del 0 al 6 indicando siel dia es lunes, 
    // martes, miercoles ...
    // getHours(); Devuelve la hora
    // getMinutes(); Devuelve los minutos
    // getMonth(); devuelve el mes como un numero de 0 a 11
    // getTime(); Devuelve el tiempo transcurrido en milisegundos desde el
    // 1 de enero de 1970 hasta 
    // el momento definido en el objeto date
    // setTime(); Establece una fecha pasandole en milisegundos el valor de esta.
    // getYear(); devuelve el año
    // getFullYear(); devuelve el año
    dteDate=new Date(year,month,day);

    //Devuelva true o false...
    return ((day==dteDate.getDate()) && (month==dteDate.getMonth()) && (year==dteDate.getFullYear()));
}

/**
 * Funcion que recibe una fecha en formato español "21/01/2013" y la devuelve
 * en formato ingles "2013/01/21"
 * Tiene que recibir:
 *  - fecha en formato español (21/01/2013)
 *  - formato de respuesta:
 *      1 - fecha en formato cadena
 *      2 - objeto fecha
 * Devuelve vacio si la fecha es erronea
 */
function convertDateEsToEn(dateEs,formatReturn)
{
    var patron=new RegExp("^([0-9]{1,2})([/])([0-9]{1,2})([/])(19|20)+([0-9]{2})$");

    // Validamos que la fecha sea correcta en el formato español segun
    // la expresion regular
    if(dateEs.search(patron)==0)
    {
        values=dateEs.split("/");
        // Revisamos que la fecha sea correcta
        if(isValidDate(values[0],values[1],values[2]))
        {
            // devuelve la fecha en formato ingles
            if(formatReturn==2)
            {
                // puedes devolver un objeto fecha para trabajar con el
                return new Date(values[2],(parseInt(values[1])-1),values[0]);
            }else{
                // puedes devolver simplemente la fecha en formato cadena
                return values[2]+"/"+values[1]+"/"+values[0];
            }
        }
    }
    return "";
}

function convertDateEnToEs(dateEn,formatReturn)
    {
        var patron=new RegExp("^(19|20)+([0-9]{2})([/])([0-9]{1,2})([/])([0-9]{1,2})$");
 
        // Validamos que la fecha sea correcta en el formato español segun
        // la expresion regular
        if(dateEn.search(patron)==0)
        {
            values=dateEn.split("/");
            // Revisamos que la fecha sea correcta
            if(isValidDate(values[2],values[1],values[0]))
            {
                // devuelve la fecha en formato ingles
                if(formatReturn==2)
                {
                    // puedes devolver un objeto fecha para trabajar con el
                    return new Date(values[0],(parseInt(values[1])-1),values[2]);
                }else{
                    // puedes devolver simplemente la fecha en formato cadena
                    return values[2]+"/"+values[1]+"/"+values[0];
                }
            }
        }
        return "";
    }