namespace MercadoEnvio
{
    partial class Menu_Principal
    {
        /// <summary>
        /// Variable del diseñador requerida.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén utilizando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben eliminar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido del método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.aBMRolToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.altaRolToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.modificarRolToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(181, 135);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(81, 26);
            this.button1.TabIndex = 0;
            this.button1.Text = "Login";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aBMRolToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(284, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // aBMRolToolStripMenuItem
            // 
            this.aBMRolToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.altaRolToolStripMenuItem,
            this.modificarRolToolStripMenuItem});
            this.aBMRolToolStripMenuItem.Name = "aBMRolToolStripMenuItem";
            this.aBMRolToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.aBMRolToolStripMenuItem.Text = "ABM Rol";
            // 
            // altaRolToolStripMenuItem
            // 
            this.altaRolToolStripMenuItem.Name = "altaRolToolStripMenuItem";
            this.altaRolToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.altaRolToolStripMenuItem.Text = "Alta Rol";
            // 
            // modificarRolToolStripMenuItem
            // 
            this.modificarRolToolStripMenuItem.Name = "modificarRolToolStripMenuItem";
            this.modificarRolToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.modificarRolToolStripMenuItem.Text = "Modificar Rol";
            this.modificarRolToolStripMenuItem.Click += new System.EventHandler(this.modificarRolToolStripMenuItem_Click);
            // 
            // Menu_Principal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 262);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "Menu_Principal";
            this.Text = "Menu Principal";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem aBMRolToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem altaRolToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem modificarRolToolStripMenuItem;
    }
}

