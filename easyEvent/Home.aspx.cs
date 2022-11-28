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
    public partial class Home : System.Web.UI.Page
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
                mostrarEvento();
                Mostrar();
            }
        }
        protected void GView_SelectedIndexChanged(object sender, EventArgs e)
        {

            try
            {
                Session["id_evento"] = GVEventos.SelectedRow.Cells[1].Text;
                
                Response.Redirect("MenEvent.aspx");

            }
            catch
            {
                Response.Write("<script>alert('error');</script>");

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
                txt_Saludo.Text = "¡Bienvenido " + dtr.GetString(1) + " " + dtr.GetString(2) + "!";
                Image.ImageUrl = "data:image/png;base64," + dtr.GetString(7).ToString(); ;
            }
            cnx.Close();

            cnx.Dispose();
        }
        public void mostrarEvento(){

            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("ListaEventos", cnx);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_User", Session["usuario"].ToString());
            dtr = cmd.ExecuteReader();
            cnx.Close();
            SqlDataAdapter dta = new SqlDataAdapter(cmd);
            DataSet dts = new DataSet();
            dta.Fill(dts);


            this.GVEventos.DataSource = dts;
            this.GVEventos.DataMember = dts.Tables[0].ToString();
            this.GVEventos.DataBind();

        }
    }
}