package com.servicio.rest;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.negocio.agenda.ContactoNegocio;
import com.capaentidades.agenda.Contacto;

@Controller
public class ContactoController {

	@RequestMapping(value = "/Contacto/ListarContacto", method = RequestMethod.GET, 
			produces ="application/json")
		public @ResponseBody ArrayList<Contacto> ListarUsuario(@RequestParam String idUssuario) {
		ArrayList<Contacto> u = null;
		int id = Integer.parseInt(idUssuario);
		try {
		u = ContactoNegocio.Instancia().ListarContactoPorUsuario(id);
		} catch (Exception e) {
		e.printStackTrace();
		}
		return u;
		}
	
}
