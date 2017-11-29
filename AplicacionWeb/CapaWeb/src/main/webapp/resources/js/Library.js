function LibraryVM() {
	var parent = this;
	var ListaCarrito =  new Array();
	
	
	$("#btnShowShoppingCart").click(function() {
		
		var content = parent.ShowCartShopping();
		$("#lblResultadosBusquedas").html("Mis Compras");
		$("#divContentCarrito").html(content);
		$("#divContentProductos").hide();
		$("#divContentCarrito").show();
		
		$("#btnSendCarritoToPaypal").click(function(e)
		{
			objParent.PagarPedido(e);
		});
		
	});
	
	parent.BuscaProductoXCatXMarca = function (categoriaUid,MarcaUid)
	{
		$.ajax({
			url : 'ListarProductos',
			data : "categoriaUid="+categoriaUid+"&marcaUid="+MarcaUid,
			type: "GET",
			success : function(result) {
				$(".owl-stage").html(result);
			}
		});
		$("#divContentProductos").show();
		$("#divContentCarrito").hide();
	}
	
	parent.AgregarProductoCarrito=function(producto)
	{
		if(parent.ValidaProductoCarrito(producto))
			{
				parent.ShowNotificationOnError(producto);
				return;
			}
		
		ListaCarrito.push(producto);
		$("#lblQuanty").html(ListaCarrito.length);
		var total = parseFloat($("#lblCarTotal").html().replace("S/.", ""));
		total+= parseFloat(producto.Precio).toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
		$("#lblCarTotal").html("S/."+total);
		$("#lblTotalResume").html("S/."+total);
		parent.ShowNotificationOndAdd(producto);
	}
	
	parent.ValidaProductoCarrito=function(prod)
	{
		for (var int = 0; int < ListaCarrito.length; int++) {
			if(ListaCarrito[int].Uid==prod.Uid)
				return true;
		}
		return false;
	}
	
	parent.ShowNotificationOndAdd = function (e)
    {
        $.notify({
            icon: '/sowadt3/resources/template/demo.etssoft.net/digital/imgSowadt3/' + e.Imagen,
            title: e.Nombre,
            message: 'Producto Agregado,consulte sus carrito de compras'
        }, {
            type: 'success',
            delay: 100,
            icon_type: 'image',
            template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0}" role="alert">' +
                '<button type="button" aria-hidden="true" class="close" data-notify="dismiss">×</button>' +
                '<img data-notify="icon" class="img-circle pull-left" style="width:50px;height:50px">  ' +
                '<span data-notify="title" style="color:black;font-weight:bold">{1}</span>' + '</br>' +
                '<span data-notify="message" style="color:black">{2}</span>' +
            '</div>'
        }
        );
    }
	
	parent.ShowNotificationOnError = function (e,msg)
	    {
	        $.notify({
	            icon: e!= null ?  '/sowadt3/resources/template/demo.etssoft.net/digital/imgSowadt3/' + e.Imagen :"",
	            title: e!= null ? e.Nombre+"(Error)" : "Error",
	            message: msg==null ? "Este prodcuto ya fue agregado!" : msg
	        }, {
	            type: 'danger',
	            delay: 100,
	            icon_type: 'image',
	            template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0}" role="alert">' +
	                '<button type="button" aria-hidden="true" class="close" data-notify="dismiss">×</button>' +
	                '<img data-notify="icon" class="img-circle pull-left" style="width:50px;height:50px">  ' +
	                '<span data-notify="title" style="color:black;font-weight:bold">{1}</span>' + '</br>' +
	                '<span data-notify="message" style="color:black">{2}</span>' +
	            '</div>'
	        }
	       );
	    }
	 
	
	parent.ShowCartShopping=function()
	{
		var body="";
		var rows="";
		var total=0;
		for (var int = 0; int < ListaCarrito.length; int++) {
			var productJson = JSON.stringify(ListaCarrito[int]);
			total+=(parseFloat(ListaCarrito[int].Precio)*1);
			rows+="<tr id='rowIndex"+ListaCarrito[int].Uid+"'>" +
					"<td>"+(int+1)+"</td>"+
					"<td>"+ListaCarrito[int].Nombre+"</td>"+
					"<td>"+ListaCarrito[int].MarcaNombre+"</td>"+
					"<td>"+ListaCarrito[int].Stock+"</td>"+
					"<td><input id='txtNewCant_"+ListaCarrito[int].Uid+"' type='tel' onkeyup='objParent.ChangeCantidadCarrito("+productJson+",this)' data-role='"+productJson+"'  value='1' min='1'  onkeypress='return event.charCode >= 48 && event.charCode <= 57' /></td>"+
					"<td>S/."+parseFloat(ListaCarrito[int].Precio).toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")+"</td>"+
					"<td id='colSubtotal_"+ListaCarrito[int].Uid+"' class='sumColumn'>S/."+((ListaCarrito[int].Precio)*1).toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")+"</td>"+
					"<td><a onclick='objParent.QuitarDetalleCarrito("+productJson+",this)'>Quitar</a></td>"+
				  "</tr>";
		}
		
		var subTotal = (total/1.18).toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
		var igv = ((total/1.18)*0.18).toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
		
		rows+="<tr>"+                        
                "<td colspan='7' align='right'>Sub.Total: <b id='lblSbutTotalCarrito'>S/."+subTotal+"</b> &nbsp; IGV: <b id='lblIgvCarrito'>S/."+igv+"</b>&nbsp; Total: <b id='lblTotalCarrito'>S/."+total+"</b></td>"+
               "</tr>"
		
		rows+="<tr> <td colspan='7' align='right'> " +
		"<div class='btn-group'>"+
        "<button type='button' class='btn btn-success'"+
                "data-toggle='dropdown'>"+
            "Pagar pedido <span class='caret'></span>"+
        "</button>"+
        "<ul class='dropdown-menu' role='menu'>"+
            "<li><a href='#'  id='btnSendCarritoToPaypal'><span class='glyphicon glyphicon-usd'></span>Paypal</a></li>"+
            "<li><a id='btnSendCarritoToAuthorize'><span class='glyphicon glyphicon-usd'></span>Authorize</a></li>"+
        "</ul>"+
        "</div>"+
		"</td></tr>";
		
		body="<table id='tableCarrito'   style='width:100%;color: black' >"+
			    "<thead style='background-color: aliceblue;color: black'>"+
			        "<tr>"+
			            "<th style='display:none'>LibroUid</th>"+
			            "<th>Item</th>"+          
			            "<th>Producto</th>"+
			            "<th>Marca</th>"+
			            "<th>Stock</th>"+
			            "<th>Cantidad</th>"+
			            "<th>Precio</th>"+
			            "<th>Sub Total</th>"+
			            "<th>Action</th>"+
			        "</tr>"+
			    "</thead>"+
			    "<tbody>"+
			    rows+
			    "</tbody>"+
			"</table>";
		return body;
		
	}
	
	parent.ChangeCantidadCarrito = function (e,obj) {
        if (parseInt(obj.value) > parseInt(e.Stock)) {
        	parent.ShowNotificationOnError(e,"Stock insuficiente !!!");
            $("#txtNewCant_" + e.Uid).val(1);
            $("#colSubtotal_"+e.Uid).html("S/."+(1*e.Precio).toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
            parent.CalculateValuesOfTable();
            return;
        }
        //$("#txtNewCant_" + e.LibroUid).val(e.CantidadVenta);
        e.Cantidad = obj.value;
        var subtotal = obj.value * e.Precio;
        var subToalFormat = 'S/.' + subtotal.toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
        $("#colSubtotal_" + e.Uid).html(subToalFormat);
        
        parent.CalculateValuesOfTable();
    }
	
	parent.QuitarDetalleCarrito = function (e, obj) {
        var TableDetalleCarrito = document.getElementById("tableCarrito");
        
        if (TableDetalleCarrito.rows.length <= 4) {
        	parent.ShowNotificationOnError(null,"Para realizar una compra es necesario\n tener un producto en su orden de compra");
            return;
        }
        
        
        for (var int = 0; int < ListaCarrito.length; int++) {
        	if(ListaCarrito[int].Uid==e.Uid)
        	{
        		ListaCarrito.pop(ListaCarrito[int]);
        		break;
        	}	
		}
        
        
        $("#rowIndex"+e.Uid).remove();
        
        for (var i = 1; i < TableDetalleCarrito.rows.length - 1; i++)
        {
            var row = TableDetalleCarrito.rows[i];
            $(row.cells[1]).html(i);
        }
        
        parent.CalculateValuesOfTable();
       
    }
	
	parent.CalculateValuesOfTable = function () {
	        var TableDetalleCarrito = document.getElementById("tableCarrito");
	        var arrayColSum = $(".sumColumn");
	        var totalSum = 0;
	        for (var i = 0; i < arrayColSum.length; i++) {

	            var objTD = $(arrayColSum[i]).text();
	            var str = objTD.replace("S/.", "").replace(/,/g, '');
	            var subTot = parseFloat(str);
	            totalSum += subTot;
	        }
	        var subTotal = totalSum / 1.18;
	        var igv = (totalSum / 1.18) * 0.18;
	        var subtotalFormat = 'S/.' + subTotal.toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
	        var igvFormat = 'S/.' + igv.toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
	        var totalFormat = 'S/.' + totalSum.toFixed(2).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
	        $("#lblSbutTotalCarrito").html(subtotalFormat);
	        $("#lblIgvCarrito").html(igvFormat);
	        $("#lblTotalCarrito").html(totalFormat);
	    }
	
	parent.PagarPedido=function(sender)
	{
		 var Credentials = "<input type='hidden' name='upload' value='1' />" +
         "<input type='hidden' name='return' value='http://localhost:14382/PayPal/Success'/>" +
         "<input type='hidden' name='cmd' value='_cart' />" +
         "<input type='hidden' name='business' value='machavezdominguez1-facilitator-1@gmail.com'/>";
		var itemsCarrito = "";
		var form = document.createElement('form');
		var table = document.getElementById("tableCarrito");
		var ListDetalleCarrito = new Array();
		
		for (var i = 1; i < table.rows.length - 2; i++) {
		var row = table.rows[i];
		//var platillo1 = $(row).find('input').data('role');
		var producto = JSON.parse($(row).find('input').attr('data-role'));
		producto.Cantidad = $(row).find('input').val();
		var detalle =  new Object();
		detalle.Uid=0;
		detalle.VentaUid=0;
		detalle.ProductoUid=producto.Uid;
		detalle.Cantidad=producto.Cantidad;
		detalle.SubTotal=((parseFloat(producto.Precio) * producto.Cantidad)).toFixed(2);
		
		var precioVentaDolares = ((parseFloat(producto.Precio) * producto.Cantidad) / 3.25).toFixed(2);
		itemsCarrito += "<input type='hidden' name='item_name_" + i + "' value='" + producto.Nombre + "' />" +
		    "<input type='hidden' name='item_number_" + i + "' value='p" + i + "' />" +
		    "<input type='hidden' name='amount_" + i + "' value='" + precioVentaDolares + "' />" +
		    "<input type='hidden' name='quantity_" + i + "' value='" + producto.Cantidad + "' />";
		
		ListDetalleCarrito.push(detalle);
		}
		
		
		//form.method = "POST";
		//form.action = "https://www.sandbox.paypal.com/cqi-bin/webscr";
		//$(form).html(Credentials+itemsCarrito);
		//form.submit();
		
		
		var listFormatJson = JSON.stringify(ListDetalleCarrito);
		$.ajax({
		url: "PutListSendToPaypal",
		data: "DetalleVentaJSON="+listFormatJson,
		type: 'GET',
		//dataType: 'json',
		async: false,
		success: function (resultado) {
			//if (resultado=="SUCCESS") {
				//form.method = "POST";
				//form.action = "https://www.sandbox.paypal.com/cqi-bin/webscr";
				//$(form).html(Credentials+itemsCarrito);
				//form.submit();
			//}
		 }
		});	
	}
}