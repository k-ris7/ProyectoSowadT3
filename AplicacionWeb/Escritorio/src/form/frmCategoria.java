package form;


import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.border.TitledBorder;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import com.entidades.sowadt3.Categoria;
import com.negocio.sowadt3.CategoriaNegocio;

import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.awt.event.ActionEvent;

public class frmCategoria extends JFrame {

	private JPanel contentPane;
	private JTextField txtNombre;
	private JTable table;
	JButton btnNuevo,btnModificar,btnEliminar,btnCancelar,btnGuardar;
	JTextArea txtDescripcion;
	boolean rsp = false;
	int banMod = 0;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					frmCategoria frame = new frmCategoria();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	private void LimpiarFormulario(){
		txtNombre.setText("");
		txtDescripcion.setText("");
	}
	
	private void HabilitarControles(Boolean Edicion){
		btnNuevo.setEnabled(!Edicion);
		btnModificar.setEnabled(!Edicion);
		btnEliminar.setEnabled(!Edicion);
		btnGuardar.setEnabled(Edicion);
		btnCancelar.setEnabled(Edicion);
	
		txtNombre.setEditable(Edicion);
		txtDescripcion.setEditable(Edicion);
	}
	
	private void ListarCategorias(){
		try {
			((DefaultTableModel)table.getModel()).setRowCount(0);
			ArrayList<Categoria> lista = CategoriaNegocio.Instancia().ListaCategoria();
			for(int i=0;i<lista.size();i++){
				String Id = String.valueOf(lista.get(i).getUid());
				String Nombre = lista.get(i).getNombre();
				String Descripcion = lista.get(i).getDescripcion();
				Object[] xyz = new Object[]{Id, Nombre, Descripcion};
				((DefaultTableModel)table.getModel()).addRow(xyz);
			}			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null,
					e.getMessage(), 
					"Agenda Virtual", 
					JOptionPane.ERROR_MESSAGE);
		}		
	}
	/**
	 * Create the frame.
	 */
	public frmCategoria() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 330, 396);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(null, "Datos Categor\u00EDa", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		panel.setBounds(10, 23, 293, 132);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel lblNombre = new JLabel("Nombre:");
		lblNombre.setBounds(10, 24, 80, 14);
		panel.add(lblNombre);
		
		txtNombre = new JTextField();
		txtNombre.setBounds(100, 21, 183, 20);
		panel.add(txtNombre);
		txtNombre.setColumns(10);
		
		JLabel lblDescripcin = new JLabel("Descripci\u00F3n:");
		lblDescripcin.setBounds(10, 49, 80, 14);
		panel.add(lblDescripcin);
		
		txtDescripcion = new JTextArea();
		txtDescripcion.setBounds(100, 52, 183, 69);
		panel.add(txtDescripcion);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 162, 294, 116);
		contentPane.add(scrollPane);
		
		table = new JTable();
		table.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"Id", "Nombre", "Descripci\u00F3n"
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
		btnNuevo.setBounds(10, 289, 89, 23);
		contentPane.add(btnNuevo);
		
		btnModificar = new JButton("Modificar");
		btnModificar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
					if(table.getSelectedColumns().length < 1)	{
						JOptionPane.showMessageDialog(null,
								"Seleccione la categoria a editar de la tabla", 
								"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						return;
					}
					banMod =Integer.valueOf(table.getValueAt(table.getSelectedRow(), 0).toString());
					Categoria categoria = CategoriaNegocio.Instancia().devolverCategoria(banMod);
					
					txtDescripcion.setText(categoria.getDescripcion());
					txtNombre.setText(categoria.getNombre());
					
					HabilitarControles(true);
				}catch (Exception ex) {
					JOptionPane.showMessageDialog(null,
							ex.getMessage(), 
							"SISTEMA ELEKTRA", 
							JOptionPane.ERROR_MESSAGE);
				}
				
			}
		});
		btnModificar.setBounds(109, 289, 89, 23);
		contentPane.add(btnModificar);
		
		btnEliminar = new JButton("Eliminar");
		btnEliminar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
			 		int codigo =Integer.valueOf(table.getValueAt(table.getSelectedRow(), 0).toString());
			 		boolean ban= CategoriaNegocio.Instancia().eliminarCategoria(codigo);
			 		if(ban == true){
						JOptionPane.showMessageDialog(null,
						"Se elimino satisfactoriamente", 
						"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						HabilitarControles(false);
						ListarCategorias();
					}else{
						JOptionPane.showMessageDialog(null,
						"No se pudo eliminar", 
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
		btnEliminar.setBounds(214, 289, 89, 23);
		contentPane.add(btnEliminar);
		
		btnGuardar = new JButton("Guardar");
		btnGuardar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
					Categoria categoria = new Categoria();
					categoria.setDescripcion(txtDescripcion.getText());
					categoria.setNombre(txtNombre.getText());
					if(banMod > 0){
						categoria.setUid(banMod);
						rsp= CategoriaNegocio.Instancia().modificarCategoria(categoria);
						banMod = 0;
					}else {
						rsp= CategoriaNegocio.Instancia().insertarCategoria(categoria);						
					}
					
					if(rsp == true){
						JOptionPane.showMessageDialog(null,
						"Se inserto satisfactoriamente", 
						"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						HabilitarControles(false);
						ListarCategorias();
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
		btnGuardar.setBounds(52, 323, 89, 23);
		contentPane.add(btnGuardar);
		
		btnCancelar = new JButton("Cancelar");
		btnCancelar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				HabilitarControles(false);
				LimpiarFormulario();
			}
		});
		btnCancelar.setBounds(163, 323, 89, 23);
		contentPane.add(btnCancelar);
		
		ListarCategorias();
		HabilitarControles(false);
	}
}
