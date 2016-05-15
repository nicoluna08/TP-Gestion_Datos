using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MercadoEnvio
{
    public partial class Menu_Principal : Form
    {
        public Menu_Principal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MercadoEnvio.ABM_Rol.Alta_Rol RolA = new MercadoEnvio.ABM_Rol.Alta_Rol();
            RolA.ShowDialog();

      

        }

        private void modificarRolToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MercadoEnvio.Pantallas.ABM_Rol.Modificar_Rol RolM = new MercadoEnvio.Pantallas.ABM_Rol.Modificar_Rol();
            RolM.ShowDialog();

        }
    }
}
