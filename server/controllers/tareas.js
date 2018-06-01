import mysql from '../config/mysql'

var connection = mysql.connection

export default (function (req, res) {

    //req.params.variable

    connection.query('SELECT id, imagen, nombre, referencia, id_categoria, precio_iva, stock, estado, ruta from productos order by id', function (error, results, fields) {
        if (error){
            console.log("my error ", error)
            var results = {
                error: error
            }

            //Asignar response
            res.setHeader('Content-Type', 'application/json')
            res.status(500);
            res.send(JSON.stringify(results))
        } else{
            console.log('The result: ', JSON.stringify(results));

            //Asignar response
            res.setHeader('Content-Type', 'application/json')
            res.send(JSON.stringify({'tareas':results}))
            //return JSON.stringify(results)
        }
      });

})