package com.presentacion.sowadt3;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;

import com.entidades.sowadt3.Categoria;
import com.entidades.sowadt3.Cliente;
import com.entidades.sowadt3.Usuario;
import com.negocio.sowadt3.CategoriaNegocio;
import com.negocio.sowadt3.ClienteNegocio;
import com.negocio.sowadt3.UsuarioNegocio;

import Utilities.Utilities;

/**
 * Handles requests for the application home page.
 */
@Controller
//@RequestMapping("HomeController")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		try {
		
			String categorias = new Utilities().GetCategories();
			model.addAttribute("BodyCategorias",categorias);
			return new ModelAndView("home", "ObjUsuario","");
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}
	
	@RequestMapping(value = "/VerificarAccesoMobile", method = RequestMethod.POST)
	@ResponseBody
	public String ListarCategorias(@RequestParam String UserName,@RequestParam String Password)
	{
		String content="";
		boolean result=true;
		try {
			Usuario usua= UsuarioNegocio.Instancia().VerificarAcceso(UserName, Password);
			if(usua!=null)
				content="Bienvenido: "+usua.getPersona().getNombre()+" "+usua.getPersona().getApellidoPaterno();
			
		} 
		catch (Exception e) {
			result=false;
			content = e.getMessage();
		}
		
		String objJson ="{"+
			       '"'+"Success"+'"'+":"+'"'+result+'"'+","
			       +'"'+"Message"+'"'+"  : "+'"'+content+'"'+""
			       +"}";
		
		return objJson;
	}
	
	
	
	
	
	
	
	
	
}
