function UtilitiesVM()
{
    var parent = this;

  
    parent.ListaProductos = function () {
        $.ajax({
            url: 'http://190.117.203.194:9090/CapaWebSWT3/ListarProductosMbile',
            //url: 'http://localhost:8080/sowadt3/ListarProductosMbile',
            //data : "Parametro1="+"Hola Miguel Angel xd..!!",
            type: "GET",
            success: function (result) {
                //alert(result);
                $("#tbContentProductos").html(result);
            }
        });
    }
    
    parent.ListaProductos();
}