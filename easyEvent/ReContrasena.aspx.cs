using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace easyEvent
{
    public partial class ReContraseña : System.Web.UI.Page
    {
        SqlConnection cnx;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BTNRecuperar(object sender, EventArgs e)
        {
            Buscar();
        }

        protected void BTNCancelar(object sender, EventArgs e)
        {
            Response.Redirect("Loggin.aspx");
        }
        public void Buscar()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("RecuPass", cnx);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", txt_Email.Text);
            cmd.Parameters.AddWithValue("@PassRescue", txt_Clave.Text);
            dtr = cmd.ExecuteReader();


            if (dtr.Read())
            {
                mensaje.Text = "<div class='alert alert-dismissible alert-success'><strong>Clave Correcta </strong> Espere un momento.</div>";

                Session["IDUserRescue"] = dtr.GetValue(0).ToString();

                Response.AddHeader("REFRESH", "3;URL=MDContrasena.aspx");

            }
            else
            {

                mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong> Email o contraseña incorrecta.</div>";

            }

            cnx.Close();
        }
    }
}