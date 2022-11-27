
/* **********************  abrir el modal  */

function openmodal() {
    var input = document.getElementById('btnModal');
                input.click();
   
    
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
    
                var myInputCod = document.getElementById('codigo');
                myInputCod.value = content.value;
                console.log(content.value);
    
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

$("table#tableVenta tr").each(function() {
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
                $("#tablaVenta").html(datos);
              }
          });
          return false;
       
  
      });
  
  });

      