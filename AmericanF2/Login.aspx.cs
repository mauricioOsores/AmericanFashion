using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AmericanF2.Modelo;

namespace AmericanF2
{
    public partial class Login : System.Web.UI.Page
    {
        AmericanFEntities contexto = new AmericanFEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            try
            {
                
                Usuario u = contexto.Usuario.Find(txtRut.Text);
                if (u != null)
                {
                    if (u.Rol == "Administrador")
                    {
                        Administrador a = contexto.Administrador.Find(txtRut.Text);
                        if (u.Clave == txtClave.Text)
                        {

                            Session["Rut"] = a.RutA;
                            Session["Nombre"] = a.Nombre;
                            Session["Rol"] = "Administrador";
                            Session.Timeout = 20; // tiempo en minutos 
                            Response.Cache.SetCacheability(HttpCacheability.NoCache);
                            Response.Redirect(@"~/Vistas/Administrador.aspx");

                        }
                    }
                    else
                    if (u.Rol == "Bodeguero")
                    {
                        Bodeguero b = contexto.Bodeguero.Find(txtRut.Text);
                        if (u.Clave == txtClave.Text)
                        {
                            Session["Rut"] = b.RutB;
                            Session["Nombre"] = b.Nombre;
                            Session["Rol"] = "Bodeguero";
                            Session.Timeout = 20; // tiempo en minutos 
                            Response.Cache.SetCacheability(HttpCacheability.NoCache);
                            Response.Redirect(@"~/Vistas/Bodeguero.aspx");
                        }

                    }
                    else
                    if (u.Rol == "Vendedor")
                    {
                        Vendedor v = contexto.Vendedor.Find(txtRut.Text);
                        if (u.Clave == txtClave.Text)
                        {
                            Session["Rut"] = v.RutV;
                            Session["Nombre"] = v.Nombre;
                            Session["Rol"] = "Vendedor";
                            Session.Timeout = 20; // tiempo en minutos 
                            Response.Cache.SetCacheability(HttpCacheability.NoCache);
                            Response.Redirect(@"~/Vistas/Vendedor.aspx");
                        }

                    }
                }
                else
                {

                    Panel_error.CssClass = "alert alert-danger";
                }
            }
            catch (Exception)
            {

                Panel_error.CssClass = "alert alert-danger";
            }
        }
    }
}