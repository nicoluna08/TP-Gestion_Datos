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

        private void Cmb_Nombre_SelectedIndexChanged(object sender, EventArgs e)
        {
            Cargar_Chk_FuncionalidadesxRol(chBoxFuncionalidades, Cmb_Nombre.Text);   
        }

        protected void Cargar_Chk_FuncionalidadesxRol(CheckedListBox unChBox, string nombre)
        {
            limpiar_Controles();

            foreach (DataRow funcionalidad in rol.FuncionalidadesXRol(nombre).Rows)
            {
                unChBox.SetItemChecked(unChBox.Items.IndexOf(funcionalidad[1].ToString()), true);
            }
        }

        protected void limpiar_Controles()
        {
            for (int i = 0; i < chBoxFuncionalidades.Items.Count; i++)
            {
                chBoxFuncionalidades.SetItemChecked(i, false);
            }
        }

        private void Btn_Grabar_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < chBoxFuncionalidades.Items.Count; i++)
            {
               rol.bajaFuncionalidadxRol(Cmb_Nombre.Text, chBoxFuncionalidades.Items[i].ToString());
            }
            foreach (string check in chBoxFuncionalidades.CheckedItems)
            {
                rol.altaFuncionalidadxRol(Cmb_Nombre.Text, check);
            }
            this.Close();
  
           
        }

        private void Btn_Salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }


    }
}
