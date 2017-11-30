package form;


import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JMenuBar;
import javax.swing.JMenu;
import javax.swing.JMenuItem;
import javax.swing.JDesktopPane;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class frmPrincipal extends JFrame {

	private JPanel contentPane;
	private JDesktopPane dspContenedor;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					frmPrincipal frame = new frmPrincipal();
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
	public frmPrincipal() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 725, 565);
		
		JMenuBar menuBar = new JMenuBar();
		setJMenuBar(menuBar);
		
		JMenu mnRegistros = new JMenu("Registros");
		menuBar.add(mnRegistros);
		
		JMenuItem mntmCategora = new JMenuItem("Categor\u00EDa");
		mntmCategora.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frmCategoria r = new frmCategoria();				
				r.setVisible(true);
			}
		});
		mnRegistros.add(mntmCategora);
		
		JMenuItem mntmMarca = new JMenuItem("Marca");
		mntmMarca.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frmMarca r = new frmMarca();				
				r.setVisible(true);
			}
		});
		mnRegistros.add(mntmMarca);
		
		JMenuItem mntmProducto = new JMenuItem("Producto");
		mntmProducto.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				frmProducto r = new frmProducto();				
				r.setVisible(true);
			}
		});
		mnRegistros.add(mntmProducto);
		
		JMenuItem mntmCliente = new JMenuItem("Cliente");
		mntmCliente.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				frmCliente r = new frmCliente();				
				r.setVisible(true);
			}
		});
		mnRegistros.add(mntmCliente);
		
		JMenu mnVenta = new JMenu("Venta");
		menuBar.add(mnVenta);
		
		JMenuItem mntmIngresarVenta = new JMenuItem("Ingresar Venta");
		mnVenta.add(mntmIngresarVenta);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);
		
		dspContenedor = new JDesktopPane();
		contentPane.add(dspContenedor, BorderLayout.CENTER);
	}

}
