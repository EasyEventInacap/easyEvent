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
    public partial class MenEvent : System.Web.UI.Page
    {
        SqlConnection cnx, cnn;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        protected void Page_Load(object sender, EventArgs e)
        {
            mostarEvento();
            verificacion_visualizadores();


        }



        protected void BTNactualizar(object sender, EventArgs e)
        {
            VisualizarEvento();
        }
        public void mostarEvento()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("MostrarEvento", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id_Evento", Session["id_evento"].ToString());
            dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {

                txtNombre.Text = dtr.GetString(3).ToString();
                txtDesc.Text = dtr.GetValue(4).ToString();
                txtUrl.Text = dtr.GetValue(5).ToString();
                Session["Plantilla"]= dtr.GetValue(8).ToString();
                /*
                txtMarca.Text = dtr.GetString(1);
                txtModelo.Text = dtr.GetString(2);
                txtAño.Text = dtr.GetInt32(3).ToString();
                txtColor.Text = dtr.GetString(4);
                txtPrecio.Text = dtr.GetInt32(5).ToString();
                txtDesc.Text = dtr.GetString(6).ToString();
                img1.ImageUrl = "data:image/png;base64," + dtr.GetString(7).ToString();
                */

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Id no encontrado o no corresponde a este vendedor')", true);
            }
            cnx.Close();
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModEvento.aspx");
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("EliminarEvento", cnx);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_Evento", Session["id_evento"].ToString());
            if (cmd.ExecuteNonQuery() > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('datos Eliminado')", true);
                Response.Redirect("Home.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error al eliminar')", true);
            }
            cnx.Close();

            cnx.Dispose();


        }

        protected void BtnVisualizadores(object sender, EventArgs e)
        {
            Response.Redirect("ListaVisualizadores.aspx");
        }

        public void VisualizarEvento()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("MostrarEvento", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id_Evento", Session["id_evento"].ToString());
            dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                Session["titulo"] = dtr.GetValue(3).ToString();
                Session["descripcion"] = dtr.GetValue(4).ToString();
                Session["link"] = dtr.GetValue(5).ToString();
                string plantilla = dtr.GetValue(8).ToString();
                Session["logo"] = "data:image/png;base64," + dtr.GetString(12).ToString();
                Session["tipoLink"] = dtr.GetValue(10).ToString();
                //Session["fondo"] = "data:image/png;base64," + dtr.GetString(5).ToString();
                //

                Session["fondo"] = " ";

                if (Convert.ToInt32(plantilla) == 1)
                {

                    Response.Redirect("Plantilla1.aspx");
                }
                else
                {
                    Response.Redirect("Plantilla2.aspx");
                }



            }
            else
            {
                Response.Write("datos invalidos");
            }
            cnx.Close();
        }

        protected void BTNCancelar(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        public void verificacion_visualizadores()
        {

            // metodo para activar o no el boton visualizador de usuarios conectados 
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("MostrarEvento", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id_Evento", Session["id_evento"].ToString());
            dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                String opc = dtr.GetValue(9).ToString();
                if (opc != "1")
                {
                    BtnVisua.Visible = false;

                }
                else
                {
                    BtnVisua.Visible = true;
                }



            }
            else
            {
                Response.Write("datos invalidos");
            }
            cnx.Close();



        }
    }
}