package form;


import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import com.entidades.sowadt3.Categoria;
import com.negocio.sowadt3.CategoriaNegocio;

import java.awt.Component;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JDialog;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class pnlBusquedaCategoria extends JPanel {
	private JTable table;
	private int idCategoria;
	private JDialog op;
	private String nombre;
	/**
	 * Create the panel.
	 */
	public int getIdCategoria() {
		return idCategoria;
	}
	public String getNombre() {
		return nombre;
	}
	
	private void capturaParent(){
		try {
			if(op!=null){return;}
			Component pdr = this.getParent();
			while(pdr.getParent()!=null){
				if(pdr instanceof JDialog){
					op = (JDialog)pdr;
					break;
				}
				pdr = pdr.getParent();
			}
		} catch (Exception e) {
		}
	}
	
	private void ListarCategorias(){
		try {
			((DefaultTableModel)table.getModel()).setRowCount(0);
			ArrayList<Categoria> lista = CategoriaNegocio.Instancia().ListaCategoria();
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
	
	public pnlBusquedaCategoria() {
		setLayout(null);
		
		JLabel lblCategoras = new JLabel("CATEGOR\u00CDAS");
		lblCategoras.setBounds(10, 24, 127, 14);
		add(lblCategoras);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(20, 49, 230, 216);
		add(scrollPane);
		
		table = new JTable();
		table.setModel(new DefaultTableModel(
			new Object[][] {
			},
			new String[] {
				"Id", "Categoria"
			}
		));
		scrollPane.setViewportView(table);
		
		JButton btnSeleccionar = new JButton("Seleccionar");
		btnSeleccionar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(table.getSelectedRow()!=-1){
					int fila = table.getSelectedRow();
					idCategoria=Integer.parseInt(
							table.getValueAt(fila, 0).toString());
					nombre = table.getValueAt(fila, 1).toString();
					capturaParent();
					op.dispose();
				}	
				
			}
		});
		btnSeleccionar.setBounds(274, 80, 89, 23);
		add(btnSeleccionar);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(274, 132, 89, 23);
		add(btnCancelar);
		
		ListarCategorias();

	}

}
