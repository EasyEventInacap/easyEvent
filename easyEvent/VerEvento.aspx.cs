using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace easyEvent
{
    public partial class VerEvento : System.Web.UI.Page
    {
        SqlConnection cnx, cnn;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNCancelar(object sender, EventArgs e)
        {
            Response.Redirect("Index.html");
        }

        protected void BTNIngresar(object sender, EventArgs e)
        {

            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("BuscarEvento", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            Session["Busca_evento"] = this.txt_Evento.Text;
            cmd.Parameters.AddWithValue("@Id_Evento", Session["Busca_evento"].ToString());
          

            dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                
                int opc = Int32.Parse(dtr.GetValue(5).ToString());
                // 1 representa a que se cree un log antes de que muestre el evento
                if (opc == 1)
                {
                    Session["titulo"] = dtr.GetValue(1).ToString();
                    Response.Redirect("DatosVisitante.aspx");

                }
                else { 
                    Session["titulo"] = dtr.GetValue(1).ToString();
                    Session["descripcion"] = dtr.GetValue(2).ToString();
                    Session["link"] = dtr.GetValue(3).ToString();
                    string plantilla = dtr.GetValue(4).ToString();
                    Session["logo"] = "data:image/png;base64," + dtr.GetString(6).ToString();
                    //Session["logo"] = "data:image/png;base64," + dr.GetString(4).ToString();
                    //Session["fondo"] = "data:image/png;base64," + dr.GetString(5).ToString();

                    if (plantilla == "1")
                    {

                        Response.Redirect("Plantilla1.aspx");
                    }
                    else
                    {
                        Response.Redirect("Plantilla2.aspx");
                    }

                }

            }
            else
            {

                mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong> El evento no existe.</div>";
            }
            cnx.Close();

            cnx.Dispose();
        }
    }
}