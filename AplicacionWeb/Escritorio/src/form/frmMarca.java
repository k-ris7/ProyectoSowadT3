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
import javax.swing.JButton;
import javax.swing.JDialog;

import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.awt.event.ActionEvent;
import javax.swing.table.DefaultTableModel;

import com.entidades.sowadt3.Categoria;
import com.entidades.sowadt3.Marca;
import com.negocio.sowadt3.CategoriaNegocio;
import com.negocio.sowadt3.MarcaNegocio;

public class frmMarca extends JFrame {

	private JPanel contentPane;
	private JTextField txtNombre;
	private JTable tableCategoria;
	private JTable table;
	JButton btnNuevo,btnModificar,btnEliminar,btnCancelar,btnGuardar,btnAgregar,btnQuitar;
	JTextArea txtDescripcion;
	boolean rsp = false;
	int banMod = 0;
	String flags = "|";
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					frmMarca frame = new frmMarca();
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
		((DefaultTableModel)tableCategoria.getModel()).setRowCount(0);
	}
	
	private void HabilitarControles(Boolean Edicion){
		btnNuevo.setEnabled(!Edicion);
		btnModificar.setEnabled(!Edicion);
		btnEliminar.setEnabled(!Edicion);
		btnGuardar.setEnabled(Edicion);
		btnCancelar.setEnabled(Edicion);
	
		txtNombre.setEditable(Edicion);
		txtDescripcion.setEditable(Edicion);
		btnAgregar.setEnabled(Edicion);
		btnQuitar.setEnabled(Edicion);
		tableCategoria.enable(Edicion);
	}
	
	private void ListarMarcas(){
		try {
			((DefaultTableModel)table.getModel()).setRowCount(0);
			ArrayList<Marca> lista = MarcaNegocio.Instancia().ListaMarca();
			for(int i=0;i<lista.size();i++){
				String Id = String.valueOf(lista.get(i).getUid());
				String Nombre = lista.get(i).getNombre();
				Object[] xyz = new Object[]{Id, Nombre};
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
	public frmMarca() {
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 497, 417);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(null, "Datos Marca", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		panel.setBounds(10, 11, 461, 175);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel lblNombre = new JLabel("Nombre:");
		lblNombre.setBounds(10, 29, 74, 14);
		panel.add(lblNombre);
		
		txtNombre = new JTextField();
		txtNombre.setBounds(94, 26, 104, 20);
		panel.add(txtNombre);
		txtNombre.setColumns(10);
		
		JLabel lblDescripcin = new JLabel("Descripci\u00F3n:");
		lblDescripcin.setBounds(10, 54, 74, 14);
		panel.add(lblDescripcin);
		
		txtDescripcion = new JTextArea();
		txtDescripcion.setBounds(94, 57, 104, 77);
		panel.add(txtDescripcion);
		
		JLabel lblSeleccioneLasCategoras = new JLabel("Seleccione las categor\u00EDas:");
		lblSeleccioneLasCategoras.setBounds(208, 29, 141, 14);
		panel.add(lblSeleccioneLasCategoras);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(218, 55, 186, 109);
		panel.add(scrollPane);
		
		tableCategoria = new JTable();
		tableCategoria.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"Id", "Categor\u00EDa"
			}
		));
		scrollPane.setViewportView(tableCategoria);
		
		btnAgregar = new JButton("+");
		btnAgregar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				pnlBusquedaCategoria b = new pnlBusquedaCategoria();
				JDialog d = new JDialog();
				d.setSize(479, 264);
				d.getContentPane().add(b);
				d.setModal(true);
				d.setVisible(true);
				
				for(int i=0;i<tableCategoria.getRowCount();i++){
					if(Integer.parseInt(tableCategoria.getValueAt(i, 0).toString()) == b.getIdCategoria()){
						JOptionPane.showMessageDialog(null,
								"Categoría ya seleccionada", 
								"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						return;
					}
				}
				
				if(b.getIdCategoria()!=0){
					Object[] xyz = new Object[]{b.getIdCategoria(), b.getNombre()};
					((DefaultTableModel)tableCategoria.getModel()).addRow(xyz);					
				}
				
				
			}
		});
		btnAgregar.setBounds(409, 58, 42, 23);
		panel.add(btnAgregar);
		
		btnQuitar = new JButton("-");
		btnQuitar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnQuitar.setBounds(409, 92, 42, 23);
		panel.add(btnQuitar);
		
		JScrollPane scrollPane_1 = new JScrollPane();
		scrollPane_1.setBounds(20, 197, 199, 171);
		contentPane.add(scrollPane_1);
		
		table = new JTable();
		table.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"Id", "Marca"
			}
		));
		scrollPane_1.setViewportView(table);
		
		btnNuevo = new JButton("Nuevo");
		btnNuevo.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				HabilitarControles(true);
				LimpiarFormulario();
			}
		});
		btnNuevo.setBounds(229, 213, 89, 23);
		contentPane.add(btnNuevo);
		
		btnModificar = new JButton("Modificar");
		btnModificar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
					if(table.getSelectedColumns().length < 1)	{
						JOptionPane.showMessageDialog(null,
								"Seleccione la Marca a editar de la tabla", 
								"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						return;
					}
					banMod =Integer.valueOf(table.getValueAt(table.getSelectedRow(), 0).toString());
					Marca marca = MarcaNegocio.Instancia().devolverMarca(banMod);
					
					txtDescripcion.setText(marca.getDescripcion());
					txtNombre.setText(marca.getNombre());
					flags = marca.getFlags();
					String categorias[] = flags.split("|");
					
					((DefaultTableModel)tableCategoria.getModel()).setRowCount(0);
					ArrayList<Categoria> lista = CategoriaNegocio.Instancia().ListaCategoria();
					for(int i=0;i<lista.size();i++){
						String Id = String.valueOf(lista.get(i).getUid());
						String Nombre = lista.get(i).getNombre();
						Object[] xyz = new Object[]{Id, Nombre};
						
						for(int y=1;y<categorias.length;y+=2){
							if(categorias[y].equals(Id)){
								((DefaultTableModel)tableCategoria.getModel()).addRow(xyz);
								break;
							}
						}						
						
					}			

					
					HabilitarControles(true);
				}catch (Exception ex) {
					JOptionPane.showMessageDialog(null,
							ex.getMessage(), 
							"SISTEMA ELEKTRA", 
							JOptionPane.ERROR_MESSAGE);
				}
			}
		});
		btnModificar.setBounds(229, 260, 89, 23);
		contentPane.add(btnModificar);
		
		btnEliminar = new JButton("Eliminar");
		btnEliminar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
			 		int codigo =Integer.valueOf(table.getValueAt(table.getSelectedRow(), 0).toString());
			 		boolean ban= MarcaNegocio.Instancia().eliminarMarca(codigo);
			 		if(ban == true){
						JOptionPane.showMessageDialog(null,
						"Se elimino satisfactoriamente", 
						"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						HabilitarControles(false);
						ListarMarcas();
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
		btnEliminar.setBounds(229, 309, 89, 23);
		contentPane.add(btnEliminar);
		
		btnGuardar = new JButton("Guardar");
		btnGuardar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
					
					Marca marca = new Marca();
					marca.setDescripcion(txtDescripcion.getText());
					marca.setNombre(txtNombre.getText());
					flags = "|";
					for(int i=0;i<tableCategoria.getRowCount();i++){
							flags += tableCategoria.getValueAt(i, 0).toString() + "|";
					}
					marca.setFlags(flags);
					if(banMod > 0){
						marca.setUid(banMod);
						rsp= MarcaNegocio.Instancia().modificarMarca(marca);
						banMod = 0;
					}else {
						rsp= MarcaNegocio.Instancia().insertarMarca(marca);	
						
					}
					flags = "|";
					if(rsp == true){
						JOptionPane.showMessageDialog(null,
						"Se inserto satisfactoriamente", 
						"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						HabilitarControles(false);
						ListarMarcas();
						LimpiarFormulario();
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
		btnGuardar.setBounds(336, 237, 89, 23);
		contentPane.add(btnGuardar);
		
		btnCancelar = new JButton("Cancelar");
		btnCancelar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				HabilitarControles(false);
				LimpiarFormulario();
			}
		});
		btnCancelar.setBounds(336, 285, 89, 23);
		contentPane.add(btnCancelar);
		
		ListarMarcas();
		HabilitarControles(false);
	}

}
