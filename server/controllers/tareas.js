import mysql from '../config/mysql'

var connection = mysql.connection

export default (function (req, res) {

    //req.params.variable

    connection.query('SELECT productos.id as id, imagen, productos.nombre, referencia, categorias.nombre as id_categoria, precio_iva, stock, estado_producto.nombre as estado, ruta from productos join categorias on categorias.id = productos.id_categoria join estado_producto on estado_producto.id = productos.estado order by id', function (error, results, fields) {
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