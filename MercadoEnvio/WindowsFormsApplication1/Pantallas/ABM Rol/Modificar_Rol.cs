using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MercadoEnvio.Pantallas.ABM_Rol
{
    public partial class Modificar_Rol : Form
    {
        private Negocio.Rol rol = new MercadoEnvio.Negocio.Rol();

        public Modificar_Rol()
        {
            InitializeComponent();
            Cargar_Combo_Roles(Cmb_Nombre);
        }


        protected void Cargar_Combo_Roles(ComboBox unCombo )
        {
        DataTable dt = rol.Roles();
        
        unCombo.ValueMember = "ID";
        unCombo.DisplayMember = "Nombre";
        unCombo.DataSource = dt.DefaultView;
       
        }
    }
}
