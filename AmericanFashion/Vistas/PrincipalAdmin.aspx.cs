using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AmericanFashion.Modelo;

namespace AmericanFashion.Vistas
{
    public partial class PrincipalAdmin : System.Web.UI.Page
    {
        AmericanFEntities1 contexto = new AmericanFEntities1();

        string userName = HttpContext.Current.User.Identity.Name;


        


        void Mostrar()
        {
            //forma uno con join (LINQ to entity (JOIN)) "de categoria a producto
            // lo que esta haciendo aca es sacar la info de categoria (contexto.categoria es de la base de datos) que este en producto  en donde id categoria sea igual a id categoria de productos
            //var listaprod = from c in contexto.Categoria
            //              join p in contexto.Producto 
            //            on c.id_categoria equals p.id_categoria
            //          select new {p.id_producto,p.Nombre,p.Stock,c.id_categoria, categoria = c.Nombre };
            // forma dos : propiedades de los objetos
            var lista_ev = from p in contexto.Producto
                           
                           select new
                           {
                               p.CodigoP,
                               p.Nombre,
                               p.Stock,
                               p.Precio,
                               p.Glosa,
                             

                           };
            GridView_ev.DataSource = lista_ev.ToList();

            GridView_ev.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                Mostrar();

            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {

                
                //agregar un objeto a la base de datos
                // lo primero es crear un objeto en este caso es el objeto categoria
                Producto p = new Producto
                {
                    Glosa=txtGlosa.Text,
                    Precio=txtPrecio.Text,
                    Stock=Convert.ToInt32(txtStock.Text),
                    Nombre=txtNombre.Text
                    
                    
                };
                // el segundo paso es agregar el objeto al contexto
                contexto.Producto.Add(p);

                // el tercer paso es guardar los cambios en la base de datos
                int i = contexto.SaveChanges();

                if (i == 1)
                {
                    lbResultado.CssClass = "text-success";
                    lbResultado.Text = "OK, Producto agregado";

                    Mostrar();

                }
                else
                {
                    lbResultado.CssClass = "text-danger";
                    lbResultado.Text = "Error";
                }
            }
            catch (Exception)
            {
                lbResultado.CssClass = "text-danger";
                lbResultado.Text = "Error";

            }
        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
        }
    }
}