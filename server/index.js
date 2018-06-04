// CommonJS
//var express = require('express')
// ES 6 - ES Modules
import express from 'express';
import routes from './routes';

var bodyParser = require('express'); // common JS, ES5

var app = express();
// Exponer el frontned, carpeta app
app.use('/', express.static('admin666'));


app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
// in latest body-parser use like below.
app.use(bodyParser.urlencoded({ extended: true }));

// Definir el API
app.use('/api', routes())

app.listen(3000)