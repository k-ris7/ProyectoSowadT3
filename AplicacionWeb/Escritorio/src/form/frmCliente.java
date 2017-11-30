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
import javax.swing.JPasswordField;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import com.entidades.sowadt3.Cliente;
import com.entidades.sowadt3.Persona;
import com.negocio.sowadt3.ClienteNegocio;

import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.awt.event.ActionEvent;

public class frmCliente extends JFrame {

	private JPanel contentPane;
	private JTextField txtNombre;
	private JTextField txtApPaterno;
	private JTextField txtApMaterno;
	private JTextField txtDni;
	private JTextField txtRazonSocial;
	private JTextField txtTelefono;
	private JTextField txtCelular;
	private JTextField txtUsuario;
	private JTextField txtTipoPersona;
	private JPasswordField txtPass;
	private JTextField txtDireccion;
	private JTable table;
	JButton btnNuevo,btnModificar,btnEliminar,btnCancelar,btnGuardar;
	boolean rsp = false;
	int banMod = 0;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					frmCliente frame = new frmCliente();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	private void ListarClientes(){
		try {
			((DefaultTableModel)table.getModel()).setRowCount(0);
			ArrayList<Cliente> lista = ClienteNegocio.Instancia().ListaCliente();
			for(int i=0;i<lista.size();i++){
				String Id = String.valueOf(lista.get(i).getUid());
				String Nombre = lista.get(i).getPersona().getNombre();
				String Dni = lista.get(i).getPersona().getDNI();
				String Usuario = lista.get(i).getUsuario();
				String Telefono = lista.get(i).getPersona().getTelefono();
				Object[] xyz = new Object[]{Id, Nombre, Dni,Usuario,Telefono};
				((DefaultTableModel)table.getModel()).addRow(xyz);
			}			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null,
					e.getMessage(), 
					"Agenda Virtual", 
					JOptionPane.ERROR_MESSAGE);
		}		
	}
	
	private void LimpiarFormulario(){
		txtNombre.setText("");
		txtApPaterno.setText("");
		txtApMaterno.setText("");
		txtDni.setText("");
		txtRazonSocial.setText("");
		txtTelefono.setText("");
		txtCelular.setText("");
		txtDireccion.setText("");
		txtTipoPersona.setText("");
		txtUsuario.setText("");
		txtPass.setText("");
	}
	
	private void HabilitarControles(Boolean Edicion){
		btnNuevo.setEnabled(!Edicion);
		btnModificar.setEnabled(!Edicion);
		btnEliminar.setEnabled(!Edicion);
		btnGuardar.setEnabled(Edicion);
		btnCancelar.setEnabled(Edicion);
	
		txtNombre.setEditable(Edicion);
		txtApPaterno.setEditable(Edicion);
		txtApMaterno.setEditable(Edicion);
		txtDni.setEditable(Edicion);
		txtRazonSocial.setEditable(Edicion);
		txtTelefono.setEditable(Edicion);
		txtCelular.setEditable(Edicion);
		txtDireccion.setEditable(Edicion);
		txtTipoPersona.setEditable(Edicion);
		txtUsuario.setEditable(Edicion);
		txtPass.setEditable(Edicion);
	}

	/**
	 * Create the frame.
	 */
	public frmCliente() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 543, 525);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBorder(new TitledBorder(null, "Datos Cliente", TitledBorder.LEADING, TitledBorder.TOP, null, null));
		panel.setBounds(10, 11, 507, 223);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel lblNombre = new JLabel("Nombre:");
		lblNombre.setBounds(10, 26, 84, 14);
		panel.add(lblNombre);
		
		JLabel lblApPaterno = new JLabel("Ap. Paterno:");
		lblApPaterno.setBounds(10, 53, 84, 14);
		panel.add(lblApPaterno);
		
		txtNombre = new JTextField();
		txtNombre.setBounds(104, 23, 136, 20);
		panel.add(txtNombre);
		txtNombre.setColumns(10);
		
		txtApPaterno = new JTextField();
		txtApPaterno.setColumns(10);
		txtApPaterno.setBounds(104, 50, 136, 20);
		panel.add(txtApPaterno);
		
		txtApMaterno = new JTextField();
		txtApMaterno.setColumns(10);
		txtApMaterno.setBounds(104, 81, 136, 20);
		panel.add(txtApMaterno);
		
		txtDni = new JTextField();
		txtDni.setColumns(10);
		txtDni.setBounds(104, 112, 136, 20);
		panel.add(txtDni);
		
		JLabel lblApMaterno = new JLabel("Ap. Materno:");
		lblApMaterno.setBounds(10, 84, 84, 14);
		panel.add(lblApMaterno);
		
		JLabel lblDni = new JLabel("D.N.I.");
		lblDni.setBounds(10, 115, 46, 14);
		panel.add(lblDni);
		
		JLabel lblRazonSocial = new JLabel("Razon Social:");
		lblRazonSocial.setBounds(270, 26, 84, 14);
		panel.add(lblRazonSocial);
		
		JLabel lblTelfono = new JLabel("Tel\u00E9fono:");
		lblTelfono.setBounds(270, 53, 74, 14);
		panel.add(lblTelfono);
		
		JLabel lblCelular = new JLabel("Celular:");
		lblCelular.setBounds(270, 84, 74, 14);
		panel.add(lblCelular);
		
		JLabel lblTipoPersona = new JLabel("Usuario:");
		lblTipoPersona.setBounds(270, 115, 84, 14);
		panel.add(lblTipoPersona);
		
		txtRazonSocial = new JTextField();
		txtRazonSocial.setColumns(10);
		txtRazonSocial.setBounds(361, 23, 136, 20);
		panel.add(txtRazonSocial);
		
		txtTelefono = new JTextField();
		txtTelefono.setColumns(10);
		txtTelefono.setBounds(361, 50, 136, 20);
		panel.add(txtTelefono);
		
		txtCelular = new JTextField();
		txtCelular.setColumns(10);
		txtCelular.setBounds(361, 81, 136, 20);
		panel.add(txtCelular);
		
		txtUsuario = new JTextField();
		txtUsuario.setColumns(10);
		txtUsuario.setBounds(361, 112, 136, 20);
		panel.add(txtUsuario);
		
		JLabel lblTipoPersona_1 = new JLabel("Tipo Persona:");
		lblTipoPersona_1.setBounds(10, 146, 84, 14);
		panel.add(lblTipoPersona_1);
		
		txtTipoPersona = new JTextField();
		txtTipoPersona.setColumns(10);
		txtTipoPersona.setBounds(104, 143, 136, 20);
		panel.add(txtTipoPersona);
		
		JLabel lblPassword = new JLabel("Password:");
		lblPassword.setBounds(270, 146, 84, 14);
		panel.add(lblPassword);
		
		txtPass = new JPasswordField();
		txtPass.setBounds(361, 143, 136, 20);
		panel.add(txtPass);
		
		JLabel lblDireccin = new JLabel("Direcci\u00F3n:");
		lblDireccin.setBounds(10, 177, 84, 14);
		panel.add(lblDireccin);
		
		txtDireccion = new JTextField();
		txtDireccion.setColumns(10);
		txtDireccion.setBounds(104, 174, 393, 20);
		panel.add(txtDireccion);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 245, 507, 173);
		contentPane.add(scrollPane);
		
		table = new JTable();
		table.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"Id", "Nombre Completo", "DNI", "Usuario", "Tel\u00E9fono"
			}
		));
		table.getColumnModel().getColumn(1).setPreferredWidth(111);
		scrollPane.setViewportView(table);
		
		btnNuevo = new JButton("Nuevo");
		btnNuevo.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				HabilitarControles(true);
				LimpiarFormulario();
			}
		});
		btnNuevo.setBounds(20, 429, 89, 23);
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
					Cliente cliente = ClienteNegocio.Instancia().devolverCliente(banMod);
					
					txtNombre.setText(cliente.getPersona().getNombre());
					txtApPaterno.setText(cliente.getPersona().getApellidoPaterno());
					txtApMaterno.setText(cliente.getPersona().getApellidoMaterno());
					txtDni.setText(cliente.getPersona().getDNI());
					txtRazonSocial.setText(cliente.getPersona().getRazonSocial());
					txtTelefono.setText(cliente.getPersona().getTelefono());
					txtCelular.setText(cliente.getPersona().getCelular());
					txtDireccion.setText(cliente.getPersona().getDireccion());
					txtTipoPersona.setText(cliente.getPersona().getTipoPersona());
					txtUsuario.setText(cliente.getUsuario());
					txtPass.setText(cliente.getPass());
					
					HabilitarControles(true);
				}catch (Exception ex) {
					JOptionPane.showMessageDialog(null,
							ex.getMessage(), 
							"SISTEMA ELEKTRA", 
							JOptionPane.ERROR_MESSAGE);
				}
			}
		});
		btnModificar.setBounds(119, 429, 89, 23);
		contentPane.add(btnModificar);
		
		btnEliminar = new JButton("Eliminar");
		btnEliminar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {				
				try{
			 		int codigo =Integer.valueOf(table.getValueAt(table.getSelectedRow(), 0).toString());
			 		boolean ban= ClienteNegocio.Instancia().eliminarCliente(codigo);
			 		if(ban == true){
						JOptionPane.showMessageDialog(null,
						"Se elimino satisfactoriamente", 
						"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						HabilitarControles(false);
						ListarClientes();;
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
		btnEliminar.setBounds(218, 429, 89, 23);
		contentPane.add(btnEliminar);
		
		btnGuardar = new JButton("Guardar");
		btnGuardar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try{
					Cliente cliente = new Cliente();
						Persona persona = new Persona();
						persona.setNombre(txtNombre.getText());
						persona.setApellidoPaterno(txtApPaterno.getText());	
						persona.setApellidoMaterno(txtApMaterno.getText());	
						persona.setDNI(txtDni.getText());	
						persona.setRazonSocial(txtRazonSocial.getText());	
						persona.setTelefono(txtTelefono.getText());	
						persona.setCelular(txtCelular.getText());	
						persona.setDireccion(txtDireccion.getText());	
						persona.setTipoPersona(txtTipoPersona.getText());	
					cliente.setPersona(persona);
					cliente.setUsuario(txtUsuario.getText());	
					cliente.setPass(txtPass.getText());	
					
					if(banMod > 0){
						cliente.setUid(banMod);
						rsp= ClienteNegocio.Instancia().modificarCliente(cliente);
						banMod = 0;
					}else {
						rsp= ClienteNegocio.Instancia().insertarCliente(cliente);					
					}
					
					if(rsp == true){
						JOptionPane.showMessageDialog(null,
						"Se inserto satisfactoriamente", 
						"Sistema Venta",JOptionPane.INFORMATION_MESSAGE);
						HabilitarControles(false);
						ListarClientes();
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
		btnGuardar.setBounds(317, 429, 89, 23);
		contentPane.add(btnGuardar);
		
		btnCancelar = new JButton("Cancelar");
		btnCancelar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				HabilitarControles(false);
				LimpiarFormulario();
			}
		});
		btnCancelar.setBounds(416, 429, 89, 23);
		contentPane.add(btnCancelar);
		
		ListarClientes();
		HabilitarControles(false);
	}
}

