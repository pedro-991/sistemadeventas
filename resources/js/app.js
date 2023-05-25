/**
 * First we will load all of this project's JavaScript dependencies which
 * includes React and other helpers. It's a great starting point while
 * building robust, powerful web applications using React + Laravel.
 */

require('./bootstrap');

/**
 * Next, we will create a fresh React component instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

//require('./components/Example');

//require('./components/index');


/***
 * 

my scripts


 */

import React from 'react'
import { render } from 'react-dom'
import { createInertiaApp } from '@inertiajs/inertia-react'
import { Link } from '@inertiajs/inertia-react'

/* const uri = import.meta.env.APP_URL; */

const uri = "http://localhost/sistemadeventas-git/public";

createInertiaApp({
  resolve: name => require(`./Pages/${name}`),
  setup({ el, App, props }) {
    render(
      <div className="">
        <nav className="navbar navbar-expand-lg bg-body-tertiary bg-dark" data-bs-theme="dark">
            <div className="collapse navbar-collapse" id="">
              <ul className="navbar-nav mr-auto">
                    <li className="nav-item">
                        <Link className="nav-link" style={{ color: "white" }} href={uri + "/indexReactVender"}>Vender &nbsp;<i class="fa fa-cart-plus"></i></Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" style={{ color: "white" }} href={uri + "/ventaIndexReact"}>Ventas &nbsp;<i class="fa fa-cart-plus"></i></Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" style={{ color: "white" }} href={uri + "/docEsperaIndexReact"}>Presupuestos &nbsp;<i class="fa fa-cart-plus"></i></Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" style={{ color: "white" }} href={uri + "/indexReactUser"}>Usuarios &nbsp;<i class="fa fa-cart-plus"></i></Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" style={{ color: "white" }} href={uri + "/indexReactCliente"}>Clientes &nbsp;<i class="fa fa-cart-plus"></i></Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" style={{ color: "white" }} href={uri + "/indexReact"}>Productos &nbsp;<i class="fa fa-cart-plus"></i></Link>
                    </li>
                    <li className="nav-item">
                        <Link className="nav-link" style={{ color: "white" }} href={uri + "/reportesReact"}>Reportes &nbsp;<i class="fa fa-cart-plus"></i></Link>
                    </li>
              </ul>
            </div>
        </nav>
    <App {...props} />
    </div>, 
    el)
  },
})


