package com.presentacion.sowadt3;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entidades.sowadt3.Categoria;
import com.entidades.sowadt3.Usuario;
import com.negocio.sowadt3.CategoriaNegocio;
import com.negocio.sowadt3.UsuarioNegocio;

import Utilities.Utilities;

@Controller
@Scope("session")
public class SeguridadController {
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public ModelAndView login(Locale locale, Model model) {
		model.addAttribute("error","");
		return new ModelAndView("login", "command",new Usuario());
	}
	
	@RequestMapping(value = "/VerificarAcceso", method = RequestMethod.POST)
	public String VerificarAcceso(@ModelAttribute("SpringWeb")Usuario u, 
								ModelMap model,HttpServletRequest request){
		try {
			
			String _Usuario = u.getNombreUsuario();
			String _Pass = u.getPassword();
			Usuario usua =  UsuarioNegocio.Instancia().VerificarAcceso(_Usuario, _Pass);
			request.getSession().setAttribute("UsuarioSesion",usua);
			//Usuario temp = (Usuario)request.getAttribute("UsuarioSesion");
			String categorias = new Utilities().GetCategories();
			model.addAttribute("BodyCategorias",categorias);
			model.addAttribute("ObjUsuario","Bienvenido: "+ usua.getPersona().getNombre()+" "+usua.getPersona().getApellidoPaterno()+" "+usua.getPersona().getApellidoMaterno());
			return "home";
		} catch (ArithmeticException e) {
			model.addAttribute("error", e.getMessage());
			model.addAttribute("command",new Usuario());
			return "login";
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());
			model.addAttribute("command",new Usuario());
			return "login";
		}
	}
	
}
