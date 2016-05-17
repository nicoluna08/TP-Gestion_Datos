using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MercadoEnvio.ABM_Rol
{
    public partial class Alta_Rol : Form
    {
        private Negocio.Rol rol = new MercadoEnvio.Negocio.Rol();

        public Alta_Rol()
     
        {
            InitializeComponent();
        }

        private void Btn_Grabar_Click(object sender, EventArgs e)
        {
            if (Txt_Nombre.Text != "") 
            {

                try
                {
                    rol.altaRol(Txt_Nombre.Text, 1);
                    foreach (string check in chBoxFuncionalidades.CheckedItems)
                    {
                        rol.altaFuncionalidadxRol(Txt_Nombre.Text, check);
                    }
                    this.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }

                


                
            }

        }

        private void Btn_Salir_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
