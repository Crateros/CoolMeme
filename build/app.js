"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express = require("express");
var app = express();
var port = 3000;
app.get('/', function (request, response) {
    response.send('Hello from Server Land!');
});
app.listen(port, function () { return console.log('I am alive! Woohoo! Application listening on port 3000...'); });
