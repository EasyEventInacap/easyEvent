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
    public partial class Loggin : System.Web.UI.Page
    {
        SqlConnection cnx;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Loggin.aspx");
            }
        }

        protected void BTNIngresar(object sender, EventArgs e)
        {
            Ingresar();
        }
        public void Ingresar()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("Loggin", cnx);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@email", txt_Email.Text);
            cmd.Parameters.AddWithValue("@password", txt_Pass.Text);
            dtr = cmd.ExecuteReader();


            if (dtr.Read())
            {
                mensaje.Text = "<div class='alert alert-dismissible alert-success'><strong>Entrando... </strong> Espere un momento.</div>";
                
                Session["usuario"] = dtr.GetValue(0).ToString();

                Response.AddHeader("REFRESH", "3;URL=Home.aspx");

            }else{

                mensaje.Text = "<div class='alert alert-danger alert-dismissible fade show' role='alert'><strong>Oh no!</strong> Email o contraseña incorrecta.</div>";
               
            }

            cnx.Close();
        }
    }
}