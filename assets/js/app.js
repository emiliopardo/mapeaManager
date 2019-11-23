/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

//import '../css/app.scss';

// any CSS you require will output into a single css file (app.css in this case)
//require("bootstrap");
require("bootstrap/dist/css/bootstrap.css");
require('../css/app.css');
require('@fortawesome/fontawesome-free/css/all.min.css');
require('@fortawesome/fontawesome-free/js/all.js');

import Routing from '../../vendor/friendsofsymfony/jsrouting-bundle/Resources/public/js/router.min.js';



const routes = require('../../public/js/fos_js_routes.json');

Routing.setRoutingData(routes);



// Need jQuery? Install it with "yarn add jquery", then uncomment to require it.
const $ = require('jquery');


//console.log('Hello Webpack Encore! Edit me in assets/js/app.js');
