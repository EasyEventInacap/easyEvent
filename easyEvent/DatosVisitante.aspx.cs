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
    public partial class DatosVisitante : System.Web.UI.Page
    {
        SqlConnection cnx, cnn;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        protected void Page_Load(object sender, EventArgs e)
        {
            mostrar();            
        }
        public void mostrar()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("BuscarEvento", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id_Evento", Session["Busca_evento"].ToString());


            dtr = cmd.ExecuteReader();
            if (dtr.Read()) {

                this.txtNombreEvento.Text= dtr.GetValue(1).ToString();
                
                img.ImageUrl = "data:image/png;base64," + dtr.GetString(6).ToString();

            }
            cnx.Close();

            cnx.Dispose();

        }
        protected void BTNIngresar(object sender, EventArgs e)
        {
            if (this.txt_Email.Text != "" && this.txt_Nombre.Text != "")
            {

                SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
                cnx.Open();
                SqlCommand cmd = new SqlCommand("CrearlogVisualizador", cnx);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id_Evento", Session["Busca_evento"].ToString());
                cmd.Parameters.AddWithValue("@nombre_visitante", this.txt_Nombre.Text );
                cmd.Parameters.AddWithValue("@email_visitante", this.txt_Email.Text);

                dtr = cmd.ExecuteReader();
                
                if (dtr.Read())
                {


                            Session["titulo"] = dtr.GetValue(0).ToString();
                            Session["descripcion"] = dtr.GetValue(1).ToString();
                            Session["link"] = dtr.GetValue(2).ToString();
                            string plantilla = dtr.GetValue(3).ToString();
                            Session["tipoLink"] = dtr.GetValue(4).ToString();
                    Session["logo"] = "data:image/png;base64," + dtr.GetString(5).ToString();
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

                              cnn.Close();

                }
                else
                {

                        mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong> El evento no existe.</div>";
                }
            }
            else
            {
                mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong>los campo no puede estar vacio .</div>";
            }
            
        }
    }
}