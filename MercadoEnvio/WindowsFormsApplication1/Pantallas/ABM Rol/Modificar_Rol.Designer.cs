namespace MercadoEnvio.Pantallas.ABM_Rol
{
    partial class Modificar_Rol
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.Btn_Grabar = new System.Windows.Forms.Button();
            this.Btn_Salir = new System.Windows.Forms.Button();
            this.chBoxFuncionalidades = new System.Windows.Forms.CheckedListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Cmb_Nombre = new System.Windows.Forms.ComboBox();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.Btn_Grabar);
            this.groupBox1.Controls.Add(this.Btn_Salir);
            this.groupBox1.Location = new System.Drawing.Point(342, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(115, 86);
            this.groupBox1.TabIndex = 9;
            this.groupBox1.TabStop = false;
            // 
            // Btn_Grabar
            // 
            this.Btn_Grabar.Location = new System.Drawing.Point(6, 19);
            this.Btn_Grabar.Name = "Btn_Grabar";
            this.Btn_Grabar.Size = new System.Drawing.Size(100, 23);
            this.Btn_Grabar.TabIndex = 3;
            this.Btn_Grabar.Text = "&Grabar";
            this.Btn_Grabar.UseVisualStyleBackColor = true;
            // 
            // Btn_Salir
            // 
            this.Btn_Salir.Location = new System.Drawing.Point(6, 48);
            this.Btn_Salir.Name = "Btn_Salir";
            this.Btn_Salir.Size = new System.Drawing.Size(100, 23);
            this.Btn_Salir.TabIndex = 4;
            this.Btn_Salir.Text = "&Salir";
            this.Btn_Salir.UseVisualStyleBackColor = true;
            // 
            // chBoxFuncionalidades
            // 
            this.chBoxFuncionalidades.FormattingEnabled = true;
            this.chBoxFuncionalidades.Items.AddRange(new object[] {
            "1. Login y seguridad",
            "2. ABM de Rol",
            "3. ABM de Usuarios",
            "4. ABM de Rubro",
            "5. ABM visibilidad de publicación",
            "6. Generar Publicación",
            "7. Comprar/Ofertar",
            "8. Historial del cliente",
            "9. Calificar al Vendedor",
            "10. Consulta de facturas realizadas al vendedor",
            "11. Listado Estadístico"});
            this.chBoxFuncionalidades.Location = new System.Drawing.Point(15, 70);
            this.chBoxFuncionalidades.Name = "chBoxFuncionalidades";
            this.chBoxFuncionalidades.Size = new System.Drawing.Size(321, 184);
            this.chBoxFuncionalidades.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Nombre:";
            // 
            // Cmb_Nombre
            // 
            this.Cmb_Nombre.FormattingEnabled = true;
            this.Cmb_Nombre.Location = new System.Drawing.Point(65, 19);
            this.Cmb_Nombre.Name = "Cmb_Nombre";
            this.Cmb_Nombre.Size = new System.Drawing.Size(181, 21);
            this.Cmb_Nombre.TabIndex = 10;
            // 
            // Modificar_Rol
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(464, 270);
            this.Controls.Add(this.Cmb_Nombre);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.chBoxFuncionalidades);
            this.Controls.Add(this.label1);
            this.Name = "Modificar_Rol";
            this.Text = "Modificar_Rol";
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button Btn_Grabar;
        private System.Windows.Forms.Button Btn_Salir;
        private System.Windows.Forms.CheckedListBox chBoxFuncionalidades;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox Cmb_Nombre;
    }
}