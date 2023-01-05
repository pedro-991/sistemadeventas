
/* **********************  abrir el modal  */

function openmodal() {
    var input = document.getElementById('btnModal');
    var myInputModal = document.getElementById('txtBusqueda');
                input.click();
                myInputModal.focus();
   
    
            };


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

                myInputTitle.value = myJson.id;
                myInputCod.value = myJson.codigo_barras;
                myInputDescrip.value = myJson.descripcion;
                myInputPrec.value = myJson.precio_venta;
                myInputCant.value = "1";
                myInputIva.value = myJson.iva;
                myInputUnd.value = myJson.und;
                myInputReferVenta.value = myJson.referventa;
                myInputReferCompra.value = myJson.refercompra;

                //console.log(myJson);

                
                btnCloseModal.click();
    
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
        let inputTypeUnd = document.getElementById('typeUnd').value;
        let botonCancelarVenta = document.getElementById('btnCancelarVenta');

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

      