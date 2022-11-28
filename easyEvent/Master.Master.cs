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
    public partial class Master : System.Web.UI.MasterPage
    {
        SqlConnection cnx, cnn;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"].ToString() == "0")
            {
                Response.Redirect("Loggin.aspx");
            }
            else
            {
                Mostrar();
            
            }
        }
        public void Mostrar()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("MostrarUser", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id_User", Session["usuario"].ToString());
            dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                //txt_Saludo.Text = dtr.GetString(3) + "!";
            }
            cnx.Close();

            cnx.Dispose();
        }
        protected void BTNcerrar(object sender, EventArgs e)
        {
            Session["usuario"] = "0";

            Response.AddHeader("REFRESH", "3;URL=index.html");
        }
    }
}