package com.presentacion.sowadt3;

import java.util.ArrayList;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entidades.sowadt3.Producto;
import com.negocio.sowadt3.ProductoNegocio;

@Controller
public class PaypalController {
	
	@RequestMapping(value = "/PutListSendToPaypal", method = RequestMethod.GET)
	@ResponseBody
	public String ListarProductos(@RequestParam String DetalleVentaJSON)
	{
		String content ="";
		try {
			
			
			content="SUCCESS";
		}  catch (Exception e) {
			content = e.getMessage();
		}
		return content;
	}
	
	
	
	
	
}
