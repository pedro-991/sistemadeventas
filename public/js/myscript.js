
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
    $("#buscarCliente").on('keyup', function (e) {

        
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
    $("#btnCargarVenta").on('click', function (e) {

        
        

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


//funcion para seleccionar el codigo

function selectCode(content) {

                var btnCloseModal = document.getElementById('btnCloseModal');
    

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

                //console.log(myJson);

                
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
                
                //console.log(myJson);

                
                btnCloseModal.click();
    
            };

            function selectCodeVenta(content) {

                var btnCloseModal = document.getElementById('btnCloseModal');
    

                var myJson = JSON.parse (content.value);
              /*   var myInputTitle = document.getElementById('title');
                var myInputCod = document.getElementById('codigoTdl');
                var myInputDescrip = document.getElementById('description');
                var myInputPrec = document.getElementById('precioTdl');
                var myInputCant = document.getElementById('cantidadTdl');
                var myInputIva = document.getElementById('ivaTdl');
                var myInputUnd = document.getElementById('typeUnd');
                var myInputReferVenta = document.getElementById('referVenta');
                var myInputReferCompra = document.getElementById('referCompra');
                var myInputPrecioIva = document.getElementById('precioConIva');

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
 */
                console.log(myJson.id);

                
                //btnCloseModal.click();

                $.ajaxSetup({
                    headers: {
                          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                      }
                  });
    
            $.ajax({
                url: 'showCargarVenta',
                type: 'POST',
                data:  {id : myJson.id},
                success: function (datos) {
                    //$("#contentTable").html(datos);
                    //openmodal();
                    /* aqui presiona el radio */
                    /* aqui haz click en el boton agregar */
                    //console.log(datos.productos);
                    datos.productos.forEach((producto) => {
                        //console.log(producto);
                        $.ajax({
                            url: 'productocodigo',
                            type: 'POST',
                            data:  {txtcodigo : producto.descripcion},
                            success: function (datos) {
                                $("#contentTable").html(datos);
                                //openmodal();
                                const x = () => 1 * 1;
                                setTimeout(x, 1000);
                                console.log(producto);
                                let btnradio = document.getElementById('selectPro');
                                let btnadd = document.getElementById('add');
                                let myInputPrec = document.getElementById('precioTdl');
                                let myInputCant = document.getElementById('cantidadTdl');
                                btnradio.click();
                                myInputPrec.value = producto.precio;
                                myInputCant.value = producto.cantidad;
                                
                                setTimeout(x, 1000);
                                //setTimeout(btnadd.click, 1000);
                                btnadd.click();
                                //btnadd.click();
                            }
                        });

                      });
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
      $("#btnTerminarVenta").on('click', function () {

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
                    url: 'terminarVenta',
                    type: 'POST',
                    data:  {
                        id_cliente : inputIdCliente,
                        productos : myTableArray
                    },
                    success: function (datos) {
                        //$("#tablaVenta").html(datos);
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

  $(function ()
  {
      $("#btnGuardarVenta").on('click', function () {

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
                            url: 'guardarVenta',
                            type: 'POST',
                            data:  {
                                id_cliente : inputIdCliente,
                                productos : myTableArray
                            },
                            success: function (datos) {
                                //botonCancelarVenta.click();
                                //aqui puedo remover la class hide de un alert
                                //para avisar que la venta esta guardada
                                alertVentaGuardada.innerText = "Venta guardada con exito";
                                alertVentaGuardada.classList.remove('d-none');
                            }
                        });

                        
                        return false;

            }
       
  
      });
  
  });

      