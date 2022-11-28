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
    public partial class Eliminar : System.Web.UI.Page
    {
        SqlConnection cnn;
        SqlCommand cmd;
        SqlDataReader dr;
        string cadena = "Data Source=dbEvent.mssql.somee.com;Initial Catalog=dbEvent;user id=easyEvent_Inacap_SQLLogin_1;pwd=2u8efjbzlf";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            String id_evento = Request.Params["id_evento"];
            Response.Write("<script>alert('"+id_evento+"');</script>");
            /*
            SqlConnection cnx = new SqlConnection(cadena);
            cnx.Open();
            string consultaSQL = "delete from eventos where id_evento=" +id_evento;
            SqlCommand cmd = new SqlCommand(consultaSQL, cnx);
            

            cnx.Close();

            Response.Redirect("Main.aspx");

            */


            Response.Redirect("Main.aspx");

        }
    }
}