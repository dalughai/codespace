// Import multiple
//import { Router,Express } from 'express'

import { Router} from 'express'
import controller from './controllers/'

import mysql from './config/mysql'

var connection = mysql.connection


export default () => {

    let api = Router();
    // /api/tares
    // GET /tareas
    // NO HAY PARAMETROS
    // return 

    console.log("controller", JSON.stringify(controller))

    api.get('/tareas', controller.tareas)
    
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