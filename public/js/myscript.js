
/* **********************  abrir el modal  */

function openmodal() {
    var input = document.getElementById('btnModal');
    var myInputModal = document.getElementById('txtBusqueda');
                input.click();
                myInputModal.focus();
   
    
            };


/* 
* funcion para redondear
* el precio a los productos con iva
*/

$(function ()
{

        $("#roundIva").on('click', function (e) {

            
            var myInputPrec = document.getElementById('precioTdl');
            var myInputIva = document.getElementById('ivaTdl');
            var myInputPrecioIva = document.getElementById('precioConIva');

            /* si iva es cero dejo el precio como esta
            en el input precio
            si iva es 16 divido el precio que esta en el input entre
            1.16 y luego coloco este nuevo precio en el input*/

            if (myInputIva.value == "16") {
                myInputPrec.value = (myInputPrec.value / 1.16).toFixed(3);
            }


        
        });

});


/* ****************************** */


/* 
* funcion para redondear
* el precio a los productos con iva en el modal
*/

$(function ()
{

        $("#roundIvaModal").on('click', function (e) {

            
            var myInputPrec = document.getElementById('modal-precio_venta');
            var myInputIva = document.getElementById('modal-iva');

            /* si iva es cero dejo el precio como esta
            en el input precio
            si iva es 16 divido el precio que esta en el input entre
            1.16 y luego coloco este nuevo precio en el input*/

            if (myInputIva.value == "16") {
                myInputPrec.value = (myInputPrec.value / 1.16).toFixed(3);
            }


        
        });

});


/* ****************************** */

/* 
* funcion para redondear
* el precio a los productos con iva en el modal de editar cantidad
*/

$(function ()
{

        $("#roundIvaModal2").on('click', function (e) {

            
            var myInputPrec = document.getElementById('modal-precio_venta2');
            var myInputIva = document.getElementById('modal-iva2');

            /* si iva es cero dejo el precio como esta
            en el input precio
            si iva es 16 divido el precio que esta en el input entre
            1.16 y luego coloco este nuevo precio en el input*/

            if (myInputIva.value == "16") {
                myInputPrec.value = (myInputPrec.value / 1.16).toFixed(3);
            }


        
        });

});


/* ****************************** */


/* 
* funcion para redondear
* el precio en dollar en el modal
*/

$(function ()
{

        $("#roundDollarModal").on('click', function (e) {

            
            var myInputPrec = document.getElementById('modal-precio_venta');
            var myInputIva = document.getElementById('modal-iva');
            let myInputDollarModal = document.getElementById('precioDollarModal');
            let taza = document.getElementById('tazaNow').value;
            
            myInputPrec.value = (myInputDollarModal.value * taza).toFixed(3);

            /* si iva es cero dejo el precio como esta
            en el input precio
            si iva es 16 divido el precio que esta en el input entre
            1.16 y luego coloco este nuevo precio en el input*/

            if (myInputIva.value == "16") {
                myInputPrec.value = (myInputPrec.value / 1.16).toFixed(3);
            }


        
        });

});


/* ****************************** */



/* 
* funcion para redondear
* el precio en dollar en el modal de editar cantidad
*/

$(function ()
{

        $("#roundDollarModal2").on('click', function (e) {

            
            var myInputPrec = document.getElementById('modal-precio_venta2');
            var myInputIva = document.getElementById('modal-iva2');
            let myInputDollarModal = document.getElementById('precioDollarModal2');
            let taza = document.getElementById('tazaNow').value;
            
            myInputPrec.value = (myInputDollarModal.value * taza).toFixed(3);

            /* si iva es cero dejo el precio como esta
            en el input precio
            si iva es 16 divido el precio que esta en el input entre
            1.16 y luego coloco este nuevo precio en el input*/

            if (myInputIva.value == "16") {
                myInputPrec.value = (myInputPrec.value / 1.16).toFixed(3);
            }


        
        });

});


/* ****************************** */
            

  $(function ()
{
    $("#codigotest").on('keyup', function (e) {

        
        if (e.keyCode == 13) {

           

            $.ajaxSetup({
                headers: {
                      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
              });

        $.ajax({
            url: 'productocodigo',
            type: 'POST',
            data:  {txtcodigo : this.value},
            success: function (datos) {
                $("#contentTable").html(datos);
                openmodal();
            }
        });
        return false;
     

 

    }
    });

});

/* funcion para buscar cliente */

$(function ()
{
    $("#buscarCliente...").on('keyup', function (e) {

        
        if (e.keyCode == 13) {

           

            $.ajaxSetup({
                headers: {
                      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
              });

        $.ajax({
            url: 'clienteFiltro',
            type: 'POST',
            data:  {txtcodigo : this.value},
            success: function (datos) {
                $("#contentTable").html(datos);
                openmodal();
            }
        });
        return false;
     

 

    }
    });

});

/* funcion para cargar factura */

$(function ()
{
    $("#btnCargarVenta...").on('click', function (e) {

        
        

            $.ajaxSetup({
                headers: {
                      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
              });

        $.ajax({
            url: 'indexOnModal',
            type: 'GET',
            success: function (datos) {
                $("#contentTable").html(datos);
                openmodal();
                /* aqui presiona el radio */
                /* aqui haz click en el boton agregar */
            }
        });
        return false;
     

 

    
    });

});

/* termina funcion para cargar factura */

/* funcion para agregar cliente */

$(function ()
{
    $("#btnAgregarCliente...").on('click', function (e) {

        let inputNombreCliente = document.getElementById('nombre_cliente_script').value;
        let inputDocumentoCliente = document.getElementById('documento_cliente_script').value;
        let inputDireccionCliente = document.getElementById('direccion_cliente_script').value;
        let alertCliente = document.getElementById('alert');
        

        if (inputNombreCliente != "" && inputDocumentoCliente != "") {

                    $.ajaxSetup({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        }
                    });

                $.ajax({
                    url: 'storeJavascript',
                    type: 'POST',
                    data:  {
                        nombre : inputNombreCliente,
                        documento : inputDocumentoCliente,
                        telefono : "0000-0000000",
                        direccion : inputDireccionCliente
                    },
                    success: function (datos) {
                        alertCliente.innerText = "Cliente agregado con exito";
                        alertCliente.classList.remove('d-none');
                    }
                });
                return false;

                } else {
                    alertCliente.innerText = "Nombre y documento del cliente son obligatorios";
                    alertCliente.classList.remove('d-none');
                }
     

 

    
    });

});

/* termina funcion para agregar cliente */


//funcion para seleccionar el codigo

function selectCode(content) {

                var btnCloseModal = document.getElementById('btnCloseModal');
                let btnAdd = document.getElementById('add');
    

                var myJson = JSON.parse (content.value);
                var myInputTitle = document.getElementById('title');
                var myInputCod = document.getElementById('codigoTdl');
                var myInputDescrip = document.getElementById('description');
                var myInputPrec = document.getElementById('precioTdl');
                var myInputCant = document.getElementById('cantidadTdl');
                var myInputIva = document.getElementById('ivaTdl');
                var myInputUnd = document.getElementById('typeUnd');
                var myInputReferVenta = document.getElementById('referVenta');
                var myInputReferCompra = document.getElementById('referCompra');
                var myInputPrecioIva = document.getElementById('precioConIva');
                var myInputCodigoTest = document.getElementById('codigotest');

                myInputTitle.value = myJson.id;
                myInputCod.value = myJson.codigo_barras;
                myInputDescrip.value = myJson.descripcion;
                myInputPrec.value = myJson.precio_venta;
                myInputCant.value = "1";
                myInputIva.value = myJson.iva;
                myInputUnd.value = myJson.und;
                myInputReferVenta.value = myJson.referventa;
                myInputReferCompra.value = myJson.refercompra;
                myInputPrecioIva.value = (myJson.precio_venta * ( 1 + (myJson.iva/100))).toFixed(2);

                myInputCodigoTest.value = "";

                //console.log(myJson);

                
                btnCloseModal.click();
                btnAdd.click();
    
            };

            /* 
            ******************************
            * comienzo funcion para buscar compuesto
            * *****************************
            *  */

            function selectCodeCompuesto(content) {

                var btnCloseModal = document.getElementById('btnCloseModal');
    

                var myJson = JSON.parse (content.value);
                var myInputCompuesto = document.getElementById('compuesto');
                

                myInputCompuesto.value = myJson.codigo_barras;

                myInputCompuesto.focus();
                

                console.log(myJson.codigo_barras);

                
                btnCloseModal.click();
    
            };

            /* 
            # FUNCION SELECCIONAR EL CLIENTE
            #
            #
            # */

            function selectCliente(content) {

                var btnCloseModal = document.getElementById('btnCloseModal');
    

                var myJson = JSON.parse (content.value);
                var myInputCliente = document.getElementById('id_cliente');
                var myInputClienteNombre = document.getElementById('nombre_cliente');
                

                myInputCliente.value = myJson.id;
                myInputClienteNombre.value = myJson.nombre;
                myInputCliente.click();
                myInputClienteNombre.click();


                myInputCliente.value = myJson.id;
                myInputClienteNombre.value = myJson.nombre;
                myInputCliente.click();
                myInputClienteNombre.click();
                
                //console.log(myJson);

                
                btnCloseModal.click();
                
    
            };

            function selectClienteDirecto(content) {

                var btnCloseModal = document.getElementById('btnCloseModal');
    

                var myJson = JSON.parse (content.value);
                var myInputCliente = document.getElementById('id_cliente');
                var myInputClienteNombre = document.getElementById('nombre_cliente');
                

                myInputCliente.value = myJson.id;
                myInputClienteNombre.value = myJson.nombre;
                myInputCliente.click();
                myInputClienteNombre.click();


                /* myInputCliente.value = myJson.id;
                myInputClienteNombre.value = myJson.nombre;
                myInputCliente.click();
                myInputClienteNombre.click(); */
                
                //console.log(myJson);

                
                //btnCloseModal.click();
                
    
            };



            function selectCodeVenta(content, url) {

                var btnCloseModal = document.getElementById('btnCloseModal');
                var myJson = JSON.parse (content.value);
                let btnadd = document.getElementById('add');
                let myInputPrec = document.getElementById('precioTdl');
                let myInputCant = document.getElementById('cantidadTdl');

                
                var myInputTitle = document.getElementById('title');
                var myInputCod = document.getElementById('codigoTdl');
                var myInputDescrip = document.getElementById('description');
                
                var myInputIva = document.getElementById('ivaTdl');
                var myInputUnd = document.getElementById('typeUnd');
                var myInputReferVenta = document.getElementById('referVenta');
                var myInputReferCompra = document.getElementById('referCompra');
                var myInputPrecioIva = document.getElementById('precioConIva');
                
    
                console.log(url);

                
                //btnCloseModal.click();

                $.ajaxSetup({
                    headers: {
                          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                      }
                  });
    
            $.ajax({
                url: url + '/showCargarVenta',
                type: 'POST',
                data:  {id : myJson.id},
                success: function (datos) {
                    //console.log(datos);
                    //$("#contentTable").html(datos);
                    //openmodal();
                    /* aqui presiona el radio */
                    /* aqui haz click en el boton agregar */
                    //console.log(datos.productos);
                    datos.forEach((producto) => {
                        console.log(producto[0][0].codigo_barras);
                        console.log(producto.precio_v);


                        myInputTitle.value = producto[0][0].id;
                        myInputCod.value = producto[0][0].codigo_barras;
                        myInputDescrip.value = producto[0][0].descripcion;
                        myInputPrec.value = producto[0][0].precio_venta;
                        myInputCant.value = "1";
                        myInputIva.value = producto[0][0].iva;
                        myInputUnd.value = producto[0][0].und;
                        myInputReferVenta.value = producto[0][0].referventa;
                        myInputReferCompra.value = producto[0][0].refercompra;
                        myInputPrecioIva.value = (producto[0][0].precio_venta * ( 1 + (producto[0][0].iva/100))).toFixed(2);

                        myInputPrec.value = producto.precio_v;
                        myInputCant.value = producto.cantidad_v;

                        btnadd.click();
                
                        





                       /*  $.ajax({
                            url: 'productocodigo',
                            type: 'POST',
                            data:  {txtcodigo : producto.descripcion},
                            success: function (datos) {
                                $("#contentTable").html(datos);
                                //openmodal();
                                const x = () => 1 * 1;
                                setTimeout(x, 2000);
                                console.log(producto);
                                let btnradio = document.getElementById('selectPro');
                                let btnadd = document.getElementById('add');
                                let myInputPrec = document.getElementById('precioTdl');
                                let myInputCant = document.getElementById('cantidadTdl');
                                //----------------------------
                                btnradio.click();
                                //----------------------------
                                myInputPrec.value = producto.precio;
                                myInputCant.value = producto.cantidad;
                                
                                setTimeout(x, 2000);
                                //setTimeout(btnadd.click, 1000);
                                btnadd.click();
                                //btnadd.click();
                            }
                        });
                        const y = () => 1 * 1;
                        setTimeout(y, 2000); */

                      });
                      btnCloseModal.click();
                }
            });
    
            };


            function Buscar() {
                var tabla = document.getElementById('tblProducto');
                var busqueda = document.getElementById('txtBusqueda').value.toLowerCase();
                var cellsOfRow="";
                var found=false;
                var compareWith="";
                for (var i = 1; i < tabla.rows.length; i++) {
                    cellsOfRow = tabla.rows[i].getElementsByTagName('td');
                    found = false;
                    for (var j = 0; j < cellsOfRow.length && !found; j++) { compareWith = cellsOfRow[j].innerHTML.toLowerCase(); if (busqueda.length == 0 || (compareWith.indexOf(busqueda) > -1))
                        {
                            found = true;
                        }
                    }
                    if(found)
                    {
                        tabla.rows[i].style.display = '';
                    } else {
                        tabla.rows[i].style.display = 'none';
                    }
                }
            }

            function printInvoice() {
                var ficha = window.document.getElementById('divFactura');

                var ventimp = window.open(' ', 'popimpr');
                ventimp.document.write(ficha.innerHTML);
                ventimp.document.close();
                ventimp.print();
                ventimp.close();
                
                        };

                        
  $(function ()
  {
      $("#btnTerminarVenta...").on('click', function () {

        var myTableArray = [];
        let inputIdCliente = document.getElementById('id_cliente').value;
        let inputNameCliente = document.getElementById('nombre_cliente').value;
        let inputTypeUnd = document.getElementById('typeUnd').value;
        let botonCancelarVenta = document.getElementById('btnCancelarVenta');
        let alertVentaGuardada = document.getElementById('alert');
        let btnGuardarPresupuesto = document.getElementById('btnGuardarVenta');
        let efectivo1 = document.getElementById('efectivo1').value;
        let totalBs = document.getElementById('totalBs').value; //total + iva



    if (inputNameCliente === "") 
    {
        alertVentaGuardada.innerText = "El nombre del cliente es obligatorio";
        alertVentaGuardada.classList.remove('d-none');
    } else
            {

                

                $("table#table tr").each(function() {
                    var arrayOfThisRow = [];
                    var tableData = $(this).find('td');
                    if (tableData.length > 0) {
                        tableData.each(function() { arrayOfThisRow.push($(this).text()); });
                        myTableArray.push(arrayOfThisRow);
                    }
                });

                //console.log(myTableArray);
  
                $.ajaxSetup({
                    headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        }
                    });
  
                $.ajax({
                    url: 'terminarVenta',
                    type: 'POST',
                    data:  {
                        id_cliente : inputIdCliente,
                        efectivo : efectivo1,
                        total : totalBs,
                        productos : myTableArray
                    },
                    success: function (datos) {
                        //$("#tablaVenta").html(datos);
                        btnGuardarPresupuesto.click();
                        botonCancelarVenta.click();
                    }
                });

                return false;

            }
       
  
      });
  
  });

  $(function ()
  {
      $("#btnActualizar").on('click', function () {

        
        let inputActualizar = document.getElementById('inputActualizar').value;
        let inputTaza = document.getElementById('tazaNow').value;
        


  
              $.ajaxSetup({
                  headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
  
          $.ajax({
              url: 'dollar',
              type: 'POST',
              data:  {
                dollar : inputActualizar
            },
              success: function () {
                //location.href='productos';
                $.ajax({
                    url: 'update',
                    type: 'POST',
                    data:  {
                      dollar : inputActualizar
                  },
                    success: function (datos) {
                      location.href='productos';
                      //inputTaza = inputActualizar;
                    }
                });
              }
          });

         

          return false;
       
  
      });
  
  });

  /* aqui abajo para guardar venta */

  //$(function ()
  //{
      //$("#btnGuardarVenta...").on('click', function () {

        function guardarVentaxxx(url) {

        var myTableArray = [];
        let inputIdCliente = document.getElementById('id_cliente').value;
        let inputNameCliente = document.getElementById('nombre_cliente').value;
        let inputTypeUnd = document.getElementById('typeUnd').value;
        let botonCancelarVenta = document.getElementById('btnCancelarVenta');
        let alertVentaGuardada = document.getElementById('alert');


    if (inputNameCliente === "") 
    {
        alertVentaGuardada.innerText = "El nombre del cliente es obligatorio";
        alertVentaGuardada.classList.remove('d-none');
    } else
            {

                        $("table#table tr").each(function() {
                            var arrayOfThisRow = [];
                            var tableData = $(this).find('td');
                            if (tableData.length > 0) {
                                tableData.each(function() { arrayOfThisRow.push($(this).text()); });
                                myTableArray.push(arrayOfThisRow);
                            }
                        });

                        //console.log(myTableArray);
        
                        $.ajaxSetup({
                            headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                }
                            });
        
                        $.ajax({
                            url: url + '/guardarVenta',
                            type: 'POST',
                            data:  {
                                id_cliente : inputIdCliente,
                                productos : myTableArray
                            },
                            success: function (datos) {
                                //botonCancelarVenta.click();
                                //aqui puedo remover la class hide de un alert
                                //para avisar que la venta esta guardada
                                alertVentaGuardada.innerText = "Presupuesto guardado con exito";
                                alertVentaGuardada.classList.remove('d-none');
                            }
                        });

                        
                        return false;

            }

        }
       
  
      //});
  
  //});

  /* **********************
  *************************
  funcion para IGTF
  *************************
  ************************* */


  $(function ()
{
    $("#divisa1").on('keyup', function (e) {


        let divisa1 = document.getElementById('divisa1').value;
        let efectivo1 = document.getElementById('efectivo1');
        let igtf = document.getElementById('igtf');
        let tazaNow = document.getElementById('tazaNow').value;
        let totalBs = document.getElementById('totalBs').value; //total + iva
        let montoBs = (divisa1 * tazaNow).toFixed(2); //divisa 1 en bs
        let totalPagar = document.getElementById('totalPagar'); // input para mostrar total + iva + igtf

        //let montoIgtf = (montoBs * 0.03).toFixed(2);

        if (parseFloat(montoBs) < parseFloat(totalBs)) {
                console.log("soy caso 1")
                efectivo1.value = (totalBs - montoBs).toFixed(2);
                igtf.value = (montoBs * 0.03).toFixed(2);
                totalPagar.value = (parseFloat(totalBs) + parseFloat(montoBs * 0.03)).toFixed(2);
        } else if (parseFloat(montoBs) > parseFloat(totalBs)) {
                console.log("soy caso 2")
                efectivo1.value = (totalBs - montoBs).toFixed(2);
                igtf.value = (totalBs * 0.03).toFixed(2);
                totalPagar.value = (parseFloat(totalBs) + parseFloat(totalBs * 0.03)).toFixed(2);
        } else {
                console.log("soy caso 3")
                efectivo1.value = (totalBs - montoBs).toFixed(2);
                igtf.value = (montoBs * 0.03).toFixed(2);
                totalPagar.value = (parseFloat(totalBs) + parseFloat(montoBs * 0.03)).toFixed(2);
          }

        /* efectivo1.value = (totalBs - montoBs).toFixed(2);

        igtf.value = (montoBs * 0.03).toFixed(2); */

        

        //console.log(totalBs);
        //console.log(montoBs);
    });

});

      