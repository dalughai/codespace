// Import multiple
//import { Router,Express } from 'express'

import { Router} from 'express';
import controller from './controllers/';

import mysql from './config/mysql';

var connection = mysql.connection;


export default () => {

    let api = Router();
    // /api/tares
    // GET /tareas
    // NO HAY PARAMETROS
    // return 

    console.log("controller", JSON.stringify(controller))

    api.get('/tareas', controller.tareas);
    



    // APARTADO DE PRODUCTO /////////////////////////////////////////////////////////
    api.get('/productos', controller.productos);
    
    api.get('/producto/:id_producto', function(req,res){
        var id_producto = req.params.id_producto;
        connection.query('SELECT * from productos where id = '+ id_producto +'' , function (error, results, fields) {
            if (error){
                console.log("my error ", error);
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
                res.send(JSON.stringify({'producto':results}))
                //return JSON.stringify(results)
            }
        });
    });

    api.post('/producto/update', function (req, res) {
    
        var id = req.body.id;
        var nombre = req.body.nombre;
        var referencia = req.body.referencia;
        var precio = req.body.precio;
        var descripcion_corta = req.body.descripcion_corta;
        var descripcion = req.body.descripcion;

        connection.query(`UPDATE productos set nombre='${nombre}', referencia ='${referencia}',precio_iva = '${precio}', descripcion_corta = '${descripcion_corta}', descripcion= '${descripcion}' WHERE id=${id}`, function (error, results, fields) {
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
                
                var results = {
                    error: null,
                    id: id           
                }
    
                //Asignar response
                res.setHeader('Content-Type', 'application/json')
                res.send(JSON.stringify(results))
            }
          });
    
    })  
    api.post('/producto/add', function (req, res) {
    
        var nombre = req.body.nombre;
        var referencia = req.body.referencia;
        var precio = req.body.precio;
        var categoria = req.body.categoria;
        var marca = req.body.marca;
        var descripcion_corta = req.body.descripcion_corta;
        var descripcion = req.body.descripcion;
        var id = 0;

        connection.query('INSERT INTO productos (id_fabricante,nombre, id_categoria,referencia,estado,descripcion,descripcion_corta,activo,precio,precio_iva,stock,date_add,imagen,ruta) VALUES ('+marca+',"'+nombre+'",'+categoria+',"'+referencia+'",3,"'+nombre+'","'+nombre+'"'+',1,'+precio+','+precio+',0,now(),"/tostringshop/images/productos/generico",1)', function (error, results, fields) {
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
                
                var results = {
                    error: null,
                    id: id           
                }
    
                //Asignar response
                res.setHeader('Content-Type', 'application/json')
                res.send(JSON.stringify(results))
            }
          });
    
    })  

    api.post('/producto/delete', function (req, res) {
    
        var id = req.body.id;
    
        connection.query(`DELETE FROM productos WHERE id=${id}`, function (error, results, fields) {
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
                
                var results = {
                    error: null            
                }
    
                //Asignar response
                res.setHeader('Content-Type', 'application/json')
                res.send(JSON.stringify(results))
            }
          });
    
    })
// FIN DE APARTADO DE PRODUCTO////////////////////////////////////

api.get('/categorias', function(req,res){
    
    connection.query('SELECT * from categorias order by id' , function (error, results, fields) {
        if (error){
            console.log("my error ", error);
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
            res.send(JSON.stringify({'categoria':results}))
            //return JSON.stringify(results)
        }
    });
});
api.get('/fabricantes', function(req,res){
    
    connection.query('SELECT * from fabricantes order by id' , function (error, results, fields) {
        if (error){
            console.log("my error ", error);
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
            res.send(JSON.stringify({'fabricante':results}))
            //return JSON.stringify(results)
        }
    });
});
api.get('/pedidos', function(req,res){
    
    connection.query('select p.id, p.referencia,u.email, p.id_carrito, ep.nombre as estado, date_format(p.date_add, "%d-%m-%Y") as fecha from pedidos as p join usuarios as u on u. id = p.id_cliente join estado_pedido as ep on ep.id = p.id_estado order by p.id desc' , function (error, results, fields) {
        if (error){
            console.log("my error ", error);
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
            res.send(JSON.stringify({'pedido':results}))
            //return JSON.stringify(results)
        }
    });
});
api.get('/facturas', function(req,res){
    
    connection.query('select factura.*, date_format(factura.fecha_factura, "%d-%m-%Y") as fecha, CONCAT(usuarios.nombre, " ", usuarios.apellido_1 )as nombre, usuarios.email from factura join usuarios on usuarios.id = factura.id_cliente order by factura.id desc' , function (error, results, fields) {
        if (error){
            console.log("my error ", error);
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
            res.send(JSON.stringify({'factura':results}))
            //return JSON.stringify(results)
        }
    });
});

api.get('/clientes', function(req,res){
    
    connection.query('select u.id, u.nombre,u.apellido_1, u.apellido_2, u.email, u.telefono, u.fecha_nacimiento, direcciones.* from usuarios as u join direcciones on direcciones.id = u.direccion' , function (error, results, fields) {
        if (error){
            console.log("my error ", error);
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
            res.send(JSON.stringify({'cliente':results}))
            //return JSON.stringify(results)
        }
    });
});
api.get('/carritos', function(req,res){
    
    connection.query('select cp.cantidad,date_format(carrito.date_add, "%d-%m-%Y") as fecha, carrito.*, u.email from carrito join usuarios as u on u.id = carrito.id_cliente join carrito_producto as cp on cp.id_carrito = carrito.id order by carrito.id desc' , function (error, results, fields) {
        if (error){
            console.log("my error ", error);
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
            res.send(JSON.stringify({'carrito':results}))
            //return JSON.stringify(results)
        }
    });
});
    // api.get('/productos/update', function(req,res){
    //     var id_producto = req.body.id_producto;
    // });

    // /api/tarea/add
    api.post('/tarea/add', function (req, res) {
    
        var tarea = req.body.nombre;
    
        // try{
            
        connection.query(`INSERT INTO tareas (nombre) VALUES ('${tarea}')`, 
        function (error, results, fields) {
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
                
                var results = {
                    error: null,
                    nombre: tarea,
                    id: results.insertId
                }
    
                //Asignar response
                res.setHeader('Content-Type', 'application/json')
                res.send(JSON.stringify(results))
            }
          });
    
        // } catch(e){
    
        //     var results = {
        //         error: e
        //     }
    
        //     //Asignar response
        //     res.setHeader('Content-Type', 'application/json')
        //     res.status(500);
        //     res.send(JSON.stringify(results))
        // }
    
    })
    
    // /api/tarea/add
    api.post('/tarea/delete', function (req, res) {
    
        var id = req.body.id;
    
        connection.query(`DELETE FROM tareas WHERE id=${id}`, function (error, results, fields) {
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
                
                var results = {
                    error: null            
                }
    
                //Asignar response
                res.setHeader('Content-Type', 'application/json')
                res.send(JSON.stringify(results))
            }
          });
    
    })
       
    // /api/tarea/update
    api.post('/tarea/update', function (req, res) {
    
        var id = req.body.id;
        var name = req.body.name;
    
        connection.query(`UPDATE tareas set nombre='${name}' WHERE id=${id}`, function (error, results, fields) {
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
                
                var results = {
                    error: null,
                    id: id,
                    name: name             
                }
    
                //Asignar response
                res.setHeader('Content-Type', 'application/json')
                res.send(JSON.stringify(results))
            }
          });
    
    })  

    return api
}