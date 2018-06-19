using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmericanFashion.Vistas
{
    public partial class PlantillaAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Rol"] == null || !Session["Rol"].Equals("Administrador"))
            {
                
                Response.Redirect("../Inicio.aspx");
            }

            LbUsuario.Text = Session["Nombre"].ToString();
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Remove("Rut");
            Session.Remove("Nombre");
            Session.Remove("Rol");
            Session.Abandon();
            Response.Redirect("../Inicio.aspx");
            Response.Cookies.Clear();
        }
    }
}