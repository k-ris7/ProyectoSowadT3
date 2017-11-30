package form;


import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.util.ArrayList;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JComboBox;
import javax.swing.border.TitledBorder;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import com.entidades.sowadt3.Categoria;
import com.entidades.sowadt3.Marca;
import com.entidades.sowadt3.Producto;
import com.negocio.sowadt3.CategoriaNegocio;
import com.negocio.sowadt3.ProductoNegocio;

import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import java.awt.event.ItemListener;
import java.awt.event.ItemEvent;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class frmProducto extends JFrame {

	private JPanel contentPane;
	private JTextField txtCodigo;
	private JTextField txtNombre;
	private JTextField txtPrecioCosto;
	private JTextField txtPrecioVenta;
	private JTextField txtStock;
	private JTable table;
	private JComboBox cmbCategoria,cmbMarca;
	JButton btnNuevo,btnModificar,btnEliminar,btnCancelar_1,btnGuardar;
	boolean rsp = false;
	int banMod = 0;
	ArrayList<Categoria> lista = null;
	int ct = 0;
	
	private void LimpiarFormulario(){
		txtNombre.setText("");
		txtCodigo.setText("");
		txtPrecioCosto.setText("");
		txtPrecioVenta.setText("");
		txtStock.setText("");
	}
	
	private void HabilitarControles(Boolean Edicion){
		btnNuevo.setEnabled(!Edicion);
		btnModificar.setEnabled(!Edicion);
		btnEliminar.setEnabled(!Edicion);
		btnGuardar.setEnabled(Edicion);
		btnCancelar_1.setEnabled(Edicion);
	
		txtNombre.setEditable(Edicion);
		txtCodigo.setEditable(Edicion);
		txtPrecioCosto.setEditable(Edicion);
		txtPrecioVenta.setEditable(Edicion);
		txtStock.setEditable(Edicion);
		cmbMarca.enable(Edicion);
		cmbCategoria.enable(Edicion);
	}
	
	private void ListarProductos(){
		try {
			((DefaultTableModel)table.getModel()).setRowCount(0);
			ArrayList<Producto> lista = ProductoNegocio.Instancia().ListarProductos_All();
			for(int i=0;i<lista.size();i++){
				String Ids = String.valueOf(lista.get(i).getUid());
				String Codigos = lista.get(i).getCodigo();
				String Nombres = lista.get(i).getNombre();
				String PrecioVenta = String.valueOf(lista.get(i).getPrecioVenta());
				String PrecioCosto = String.valueOf(lista.get(i).getPrecioCosto());
				String Stock = String.valueOf(lista.get(i).getStock());
				Object[] xyz = new Object[]{Ids, Codigos, Nombres,PrecioVenta,PrecioCosto,Stock};
				((DefaultTableModel)table.getModel()).addRow(xyz);
			}			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null,
					e.getMessage(), 
					"Agenda Virtual", 
					JOptionPane.ERROR_MESSAGE);
		}		
	}
	
	private void LlenarComboMarca(){
		Categoria cate = (Categoria)cmbCategoria.getSelectedItem();
		ct = cate.getUid();
		DefaultComboBoxModel xM = new DefaultComboBoxModel();
		cmbMarca.setModel(xM);
		
		for(int i=0;i<lista.size();i++){
			if(lista.get(i).getUid() == ct){
				ArrayList<Marca> listaMarca = lista.get(i).getListaMarca();
				for(int y=0;y<listaMarca.size();y++){
					xM.addElement(listaMarca.get(y));
				}	
				break;
			}
		}	
		
	}
	
	
	private void LlenarComboCategoria(){
	try {
		DefaultComboBoxModel x = new DefaultComboBoxModel();
		cmbCategoria.setModel(x);
		
		lista = CategoriaNegocio.Instancia().ListaCategoria();
		for(int i=0;i<lista.size();i++){
			x.addElement(lista.get(i));
		}
		
		DefaultComboBoxModel xM = new DefaultComboBoxModel();
		cmbMarca.setModel(xM);
		
		ArrayList<Marca> listaMarca = lista.get(0).getListaMarca();
		for(int i=0;i<listaMarca.size();i++){
			xM.addElement(listaMarca.get(i));
		}
	} catch (Exception e) {
		JOptionPane.showMessageDialog(null,
			e.getMessage(), "Sistema Farmacia", JOptionPane.ERROR_MESSAGE);
	}		
	}

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					frmProducto frame = new frmProducto();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public frmProducto() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 636, 483);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(28, 21, 564, 179);
		panel.setBorder(new TitledBorder(null, "Datos Producto", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel lblCdigo = new JLabel("C\u00F3digo:");
		lblCdigo.setBounds(25, 30, 46, 14);
		panel.add(lblCdigo);
		
		txtCodigo = new JTextField();
		txtCodigo.setBounds(105, 27, 112, 20);
		panel.add(txtCodigo);
		txtCodigo.setColumns(10);
		
		JLabel lblNombre = new JLabel("Nombre:");
		lblNombre.setBounds(25, 67, 46, 14);
		panel.add(lblNombre);
		
		txtNombre = new JTextField();
		txtNombre.setColumns(10);
		txtNombre.setBounds(101, 64, 193, 20);
		panel.add(txtNombre);
		
		JLabel lblCategora = new JLabel("Categor\u00EDa:");
		lblCategora.setBounds(25, 106, 78, 14);
		panel.add(lblCategora);
		
		cmbCategoria = new JComboBox();
		cmbCategoria.addItemListener(new ItemListener() {
			public void itemStateChanged(ItemEvent arg0) {
				LlenarComboMarca();			
			
			}
		});
		cmbCategoria.setBounds(101, 103, 193, 20);
		panel.add(cmbCategoria);
		
		JLabel lblMarca = new JLabel("Marca:");
		lblMarca.setBounds(25, 140, 46, 14);
		panel.add(lblMarca);
		
		cmbMarca = new JComboBox();
		cmbMarca.setBounds(101, 137, 193, 20);
		panel.add(cmbMarca);
		
		JLabel lblPrecioCosto = new JLabel("Precio Costo:");
		lblPrecioCosto.setBounds(325, 67, 83, 14);
		panel.add(lblPrecioCosto);
		
		JLabel lblPrecioVenta = new JLabel("Precio Venta:");
		lblPrecioVenta.setBounds(325, 106, 83, 14);
		panel.add(lblPrecioVenta);
		
		JLabel lblStock = new JLabel("Stock:");
		lblStock.setBounds(325, 140, 83, 14);
		panel.add(lblStock);
		
		txtPrecioCosto = new JTextField();
		txtPrecioCosto.setBounds(400, 64, 143, 20);
		panel.add(txtPrecioCosto);
		txtPrecioCosto.setColumns(10);
		
		txtPrecioVenta = new JTextField();
		txtPrecioVenta.setColumns(10);
		txtPrecioVenta.setBounds(400, 103, 143, 20);
		panel.add(txtPrecioVenta);
		
		txtStock = new JTextField();
		txtStock.setColumns(10);
		txtStock.setBounds(400, 137, 143, 20);
		panel.add(txtStock);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(28, 211, 564, 184);
		contentPane.add(scrollPane);
		
		table = new JTable();
		table.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"Id", "Codigo", "Nombre", "Precio Venta", "Precio Costo", "Stock"
			}
		));
		scrollPane.setViewportView(table);
		
		btnNuevo = new JButton("Nuevo");
		btnNuevo.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				HabilitarControles(true);
				LimpiarFormulario();
			}
		});
		btnNuevo.setBounds(38, 406, 89, 23);
		contentPane.add(btnNuevo);
		
		btnModificar = new JButton("Modificar");
		btnModificar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
				if(table.getSelectedColumns().length < 1)	{
					JOptionPane.showMessageDialog(null,
							"Seleccione el producto a editar de la tabla", 
							"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
					return;
				}
				banMod =Integer.valueOf(table.getValueAt(table.getSelectedRow(), 0).toString());
				Producto producto = ProductoNegocio.Instancia().devolverProducto(banMod);
				
				//Categoria cate =(Categoria)cmbCategoria.getSelectedItem();
				for(int i = 0; i < cmbCategoria.getItemCount() ; i++){
					Categoria cate = (Categoria)cmbCategoria.getModel().getElementAt(i);
					if(cate.getUid() == producto.getCategoria().getUid()){
						cmbCategoria.setSelectedItem(cate);	
						break;
					}					
				}
				LlenarComboMarca();	
				for(int i = 0; i < cmbMarca.getItemCount() ; i++){
					Marca mar = (Marca)cmbMarca.getModel().getElementAt(i);
					if(mar.getUid() == producto.getMarca().getUid()){
						cmbMarca.setSelectedItem(mar);	
						break;
					}					
				}
				
				//cmbMarca.setSelectedItem(producto.getCategoria().getListaMarca());
				
				txtStock.setText(String.valueOf(producto.getStock()));
				txtPrecioCosto.setText(String.valueOf(producto.getPrecioCosto()));
				txtPrecioVenta.setText(String.valueOf(producto.getPrecioVenta()));
				txtCodigo.setText(producto.getCodigo());
				txtNombre.setText(producto.getNombre());
				HabilitarControles(true);
				}catch (Exception ex) {
					JOptionPane.showMessageDialog(null,
							ex.getMessage(), 
							"SISTEMA ELEKTRA", 
							JOptionPane.ERROR_MESSAGE);
				}
			}
		});
		btnModificar.setBounds(137, 406, 89, 23);
		contentPane.add(btnModificar);
		
		 btnEliminar = new JButton("Eliminar");
		 btnEliminar.addActionListener(new ActionListener() {
		 	public void actionPerformed(ActionEvent arg0) {
		 		try{
			 		int codigo =Integer.valueOf(table.getValueAt(table.getSelectedRow(), 0).toString());
			 		boolean ban= ProductoNegocio.Instancia().eliminarProducto(codigo);
			 		if(ban == true){
						JOptionPane.showMessageDialog(null,
						"Se elimino satisfactoriamente", 
						"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						HabilitarControles(false);
						ListarProductos();
					}else{
						JOptionPane.showMessageDialog(null,
						"No se pudo insertar", 
						"Sistema Venta",JOptionPane.OK_OPTION);
					}
		 		}catch (Exception ex) {
		 			JOptionPane.showMessageDialog(null,
							ex.getMessage(), 
							"SISTEMA ELEKTRA", 
							JOptionPane.ERROR_MESSAGE);
				}
		 	}
		 });
		btnEliminar.setBounds(249, 406, 89, 23);
		contentPane.add(btnEliminar);
		
		 btnGuardar = new JButton("Guardar");
		 btnGuardar.addActionListener(new ActionListener() {
		 	public void actionPerformed(ActionEvent e) {
		 		try{
			 		Producto producto = new Producto();
			 		producto.setCodigo(txtCodigo.getText());
			 		producto.setNombre(txtNombre.getText());
			 		producto.setPrecioCosto(Double.parseDouble(txtPrecioCosto.getText()));
			 		producto.setPrecioVenta(Double.parseDouble(txtPrecioVenta.getText()));
			 		producto.setStock(Integer.parseInt(txtStock.getText()));
			 		producto.setImagen("");
			 			Marca marca = (Marca)cmbMarca.getSelectedItem();
			 			Categoria categoria = (Categoria)cmbCategoria.getSelectedItem();
		 			producto.setMarca(marca);
		 			producto.setCategoria(categoria);
		 			
		 			if(banMod > 0){
		 				producto.setUid(banMod);
		 				rsp = ProductoNegocio.Instancia().modificarProducto(producto);
		 				banMod = 0;
		 			} else{
		 				rsp = ProductoNegocio.Instancia().insertarProducto(producto);
		 			}
		 			if(rsp == true){
						JOptionPane.showMessageDialog(null,
						"Se inserto satisfactoriamente", 
						"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						HabilitarControles(false);
						ListarProductos();
					}else{
						JOptionPane.showMessageDialog(null,
						"No se pudo insertar", 
						"Sistema Venta",JOptionPane.OK_OPTION);
					}
		 		} catch (Exception e2) {
		 			JOptionPane.showMessageDialog(null,
							e2.getMessage(), "Sistema Ventas", JOptionPane.ERROR_MESSAGE);
				}
		 	}
		 });
		btnGuardar.setBounds(348, 406, 89, 23);
		contentPane.add(btnGuardar);
		
		 btnCancelar_1 = new JButton("Cancelar");
		btnCancelar_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				HabilitarControles(false);
				LimpiarFormulario();
			}
		});
		btnCancelar_1.setBounds(447, 406, 89, 23);
		contentPane.add(btnCancelar_1);
		
		HabilitarControles(false);
		LlenarComboCategoria();
		ListarProductos();
	}
}

