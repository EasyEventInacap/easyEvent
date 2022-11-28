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
    public partial class MDContraseña : System.Web.UI.Page
    {
        SqlConnection cnx;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IDUserRescue"] == null)
            {
                Response.Redirect("ReConstrasena.aspx");
            }
        }

        protected void BTNGuardar(object sender, EventArgs e)
        {
            Guardar();
        }

        protected void BTNCancelar(object sender, EventArgs e)
        {
            Session["IDUserRescue"] = 0;
            Response.Redirect("Loggin.aspx");

        }
        public void Guardar()
        {
            if (this.txt_Pass1.Text != "" && this.txt_Pass2.Text != "")
            {
                if (txt_Pass1.Text == txt_Pass2.Text)
                {
                    SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
                    cnx.Open();
                    SqlCommand cmd = new SqlCommand("UpdatePassRescue", cnx);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Id_user", Session["IDUserRescue"].ToString());
                    cmd.Parameters.AddWithValue("@Pass", txt_Pass1.Text);
                    dtr = cmd.ExecuteReader();
                    mensaje.Text = "<div class='alert alert-dismissible alert-success'><strong>Felicidades </strong> Contraseña modificada.</div>";
                    Response.AddHeader("REFRESH", "3;URL=Home.aspx");

                    cnx.Close();
                    Session["IDUserRescue"] = 0;
                }
                else
                {
                    mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong>Las contraseñas no coinciden .</div>";
                }
            }
            else
            {
                mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong>El campo no puede estar vacio .</div>";
            }
        }
    }
}