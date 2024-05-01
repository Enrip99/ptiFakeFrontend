const express = require('express');
const app = express();
const mqtt = require("mqtt");
const client = mqtt.connect("mqtt://nattech.fib.upc.edu:40412");
const plantid = 3;
const server = app.listen(17078);
app.get('/:temp/:hum/:light', (req, res) => {
    console.log(req.params.temp, req.params.hum, req.params.light)
    if (req.params.temp != -1) client.publish("temperature", `${plantid} ${req.params.temp}`);
    if (req.params.hum != -1) client.publish("humidity", `${plantid} ${req.params.hum}`);
    if (req.params.light == 0) client.publish("light", `${plantid} false`);
    else if (req.params.light == 1) client.publish("light", `${plantid} true`);
    res.send();
});