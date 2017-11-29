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
public class ProductoController {
	
	@RequestMapping(value = "/ListarProductos", method = RequestMethod.GET)
	@ResponseBody
	public String ListarProductos(@RequestParam int categoriaUid,@RequestParam int marcaUid)
	{
		String content ="";
		try {
			
			ArrayList<Producto> ListProd = ProductoNegocio.Instancia().ListarProductosXCategoriaXMarca(categoriaUid, marcaUid);
			content = DrawProductos(ListProd);
		}  catch (Exception e) {
			content = e.getMessage();
		}
		return content;
	}
	
	public String DrawProductos(ArrayList<Producto>lista) {
		
		String body="";
		try {
			
			for (Producto producto : lista) {
				String objProductJson ="{"+
					       '"'+"Uid"+'"'+":"+'"'+producto.getUid()+'"'+","
					       +'"'+"CategoriaUid"+'"'+":"+'"'+producto.getCategoria().getUid()+'"'+","
					       +'"'+"CategoriaNombre"+'"'+":"+'"'+producto.getCategoria().getNombre()+'"'+","
					       +'"'+"MarcaUid"+'"'+" : "+'"'+producto.getMarca().getUid()+'"'+","
					       +'"'+"MarcaNombre"+'"'+" : "+'"'+producto.getMarca().getNombre()+'"'+","
					       +'"'+"Codigo"+'"'+"  : "+'"'+producto.getCodigo()+'"'+","
					       +'"'+"Nombre"+'"'+"  : "+'"'+producto.getNombre()+'"'+","
					       +'"'+"Precio"+'"'+" : "+'"'+producto.getPrecioVenta()+'"'+","
					       +'"'+"Stock"+'"'+" : "+'"'+producto.getStock()+'"'+","
					       +'"'+"Imagen"+'"'+" : "+'"'+producto.getImagen()+'"'+","
					       +'"'+"Cantidad"+'"'+" : "+'"'+1+'"'+""
					       +"}";
			body+="<div class='owl-item cloned' style='width: 270px; margin-right: 30px;'><li class='wow zoomIn item ajax_block_product col-xs-12 col-sm-3 col-md-3 last-in-line last-item-of-tablet-line last-item-of-mobile-line' style='visibility: visible; animation-name: zoomIn;'>"+
				"<div class='product-container' itemscope='' itemtype='https://schema.org/Product'>"+
					"<div class='left-block'>"+
						"<div class='product-image-container'>"+
							"<a class='product_img_link' href='#' title='Lorem ipsum dolor' itemprop='url'> <img class='replace-2x img-responsive' src='resources/template/demo.etssoft.net/digital/imgSowadt3/"+producto.getImagen()+"' alt='Lorem ipsum dolor' title='Lorem ipsum dolor' width='450' height='450' itemprop='image'> <img class='zoom replace-2x img-responsive ybc_img_hover' src='resources/template/demo.etssoft.net/digital/44-home_default/printed-dress.jpg' 'src='' main='' webapp='' resources='' template='' demo.etssoft.net='' digital='' 44-home_default='' printed-dress.jpg'='' alt='Lorem ipsum dolor' itemprop='image' title='Lorem ipsum dolor'>"+
							"</a> <a class='new-box' href='#'> <span class='new-label'>New</span>"+
							"</a> <a class='sale-box' href='#'> <span class='sale-label'>Sale</span>"+
							"</a>"+
							"<div class='button-container-product'>"+
								"<div class='functional-buttons clearfix' data-toggle='tooltip' data-placement='left' title='Add to Wishlist'>"+
									"<div class='wishlist' title='Add to Wishlist'>"+
										"<a class='addToWishlist wishlistProd_4' href='#' data-rel='4' onclick='WishlistCart('wishlist_block_list', 'add', '4', false, 1); return false;'>"+
										"Add to Wishlist </a>"+
									"</div>"+
								"</div>"+
								"<a class='quick-view' data-toggle='tooltip' title='Quick view' data-placement='left' href='#' data-url='#'> <span>Quick"+
								"view</span>"+
								"</a>"+
								"<div class='compare' data-toggle='tooltip' data-placement='left' title='Add to Compare'>"+
									"<a class='add_to_compare' href='#' data-id-product='4'> Add to Compare </a>"+
								"</div>"+
							"</div>"+
						"</div>"+
					"</div>"+
					"<div class='right-block'>"+
						"<h5 itemprop='name'>"+
							"<a class='product-name' href='smart-watches/4-printed-dress.html' title='"+producto.getNombre()+"' itemprop='url'> "+producto.getNombre()+" - ("+producto.getMarca().getNombre()+")"+
							"</a>"+
						"</h5>"+
						"<div class='content_price'>"+
							"<span class='price product-price'> S./"+producto.getPrecioVenta()+" </span>"+
							"<div class='hook-reviews'>"+
								"<div class='comments_note' itemprop='aggregateRating' itemscope='' itemtype='http://schema.org/AggregateRating'>"+
									"<div class='star_content clearfix'>"+
										"<div class='star'></div>"+
										"<div class='star'></div>"+
										"<div class='star'></div>"+
										"<div class='star'></div>"+
										"<div class='star'></div>"+
									"</div>"+
									"<span class='nb-comments'><span itemprop='reviewCount'>0</span> No reviews</span>"+
								"</div>"+
							"</div>"+
							"<span class='price-percent-reduction not-show'> Buy "+
								"now to save </span>"+
						"</div>"+
						"<div >"+
							"<a onclick='objParent.AgregarProductoCarrito("+objProductJson+")' class='button  btn btn-default'> <span>Comprar</span>"+
							"</a>"+
						"</div>"+
						"<p class='product-desc' itemprop='description'>Printed"+
							"evening dress with straight sleeves with black thin waist"+
							"belt and ruffled linings.</p>"+
					"</div>"+
				"</div> "+
			"</li></div>";
			
			}
			
			return body;
			
		} catch (Exception e) {
			return "";
		}
		
	}
	
	@RequestMapping(value = "/ListarProductosMbile", method = RequestMethod.GET)
	@ResponseBody
	public String ListarProductosMobile()
	{
		String content ="";
		try {
			
			ArrayList<Producto> ListProd = ProductoNegocio.Instancia().ListarProductos_All();
			for (Producto producto : ListProd) {
			
			content+="<tr>";
			content+="<td>"+producto.getUid()+"</td>";
			content+="<td>"+producto.getCodigo()+"</td>";
			content+="<td>"+producto.getNombre()+"</td>";
			content+="<td>"+producto.getStock()+"</td>";
			content+="<td>"+producto.getPrecioVenta()+"</td>";
			content+="</tr>";
			}
			
		}  catch (Exception e) {
			content = e.getMessage();
		
		}
		return content;
	}
	
	
}
