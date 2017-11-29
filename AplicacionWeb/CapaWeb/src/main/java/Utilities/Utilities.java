package Utilities;

import java.util.List;

import com.entidades.sowadt3.Categoria;
import com.entidades.sowadt3.Marca;
import com.negocio.sowadt3.CategoriaNegocio;

public class Utilities {

	public String GetCategories ()
	{
		try {
			List<Categoria>  categorias = CategoriaNegocio.Instancia().ListaCategoria();
			String boby = DrawBodyCategories(categorias);
			return boby;
		} catch (Exception e) {
			return "";
		}
	}
	
	public String DrawBodyCategories(List<Categoria>lista)
	{
		String body="";
		try {
			for (Categoria categoria : lista) {
				String bodyMarca="";
				for (Marca marca : categoria.getListaMarca()) {
					bodyMarca+="<li><a onclick='objParent.BuscaProductoXCatXMarca("+categoria.getUid()+","+marca.getUid()+")'>"+marca.getNombre()+"</a></li>";
				}
				 body+="<li class='ybc-menu-has-sub ybc-menu-item  ybc-menu-sub-type-custom ybc-menu-column-type-full  sub-type-title'"+
							"id='ybc-menu-2'>"+
							"<a class='ybc-menu-item-link'"+
							"onclick='objParent.BuscaProductoXCatXMarca("+categoria.getUid()+",0)'>"+ 
							 "<span class='ybc_menu_item_link_content'>"+categoria.getNombre()+"</span>"+ 
							 "<span class='fa fa-submenu-exist'></span>"+
						     "</a>"+ 
							"<span class='ybc-mm-control closed'></span>"+
							"<div style='width: 100%;'"+
								"class='ybc-menu-columns-wrapper ybc-mm-control-content'"+
								"id='ybc-menu-columns-wrapper-2'>"+
								"<div class='ybc-menu-column-item ybc-menu-column-size-3_12 '"+
								 "id='ybc-menu-column-6'>"+
								  "<div class='ybc-menu-column-top'>"+
										"<h6>"+categoria.getNombre()+"</h6>"+
										"<div class='ybc_description_block'>"+
											"<ul>"+
												bodyMarca+
											"</ul>"+
										"</div>"+
									"</div>"+
								"</div>"+
							"</div>"+
						"</li>";
			}
			return body;
		} catch (Exception e) {
			// TODO: handle exception
		}
			return "";
		} 
	
}
