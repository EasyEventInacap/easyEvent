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
    public partial class Estadisticas : System.Web.UI.Page
    {
        SqlConnection cnx, cnn;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        String cant = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"].ToString() == "0")
            {
                Response.Redirect("Loggin.aspx");
            }
            else
            {
                contar();
                visualizar();
                Visualizar2();
            }

            

        }
        public void contar()
        {
           
            cnn = new SqlConnection(Session["Cadena"].ToString());
            cnn.Open();
            cmd = new SqlCommand();
            cmd.Connection = cnn;

            
                cmd.CommandText = " select count(eventos.titulo) from eventos where eventos.log_visualizadores = '1';";
                dtr = cmd.ExecuteReader();
                if (dtr.Read())
                {
                    cant = dtr.GetValue(0).ToString();

                }
                
            
            cnn.Close();
        }

        public void visualizar()
        {


            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("Grafica_eventoXcantVisitantes", cnx);
            cmd.CommandType = CommandType.StoredProcedure;

            int cantidad = Convert.ToInt32(cant);
           

            cmd.Parameters.AddWithValue("@Id_User", Session["usuario"].ToString());
            dtr = cmd.ExecuteReader();
            String[] titulos = new string[cantidad];
            int[] cantidadVisita = new int[cantidad];
            int i = 0;
            while (dtr.Read())
            {

                titulos[i] = dtr.GetString(0);
                cantidadVisita[i] = dtr.GetInt32(1);
                i++;

            }
            cnx.Close();
            Grafico1.Series["Series1"].Points.DataBindXY(titulos, cantidadVisita);

            cnx.Dispose();
        }
        public void Visualizar2()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("Grafica_eventoXcantVisitantes", cnx);
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.AddWithValue("@Id_User", Session["usuario"].ToString());
            dtr = cmd.ExecuteReader();
            cnx.Close();

            SqlDataAdapter dta = new SqlDataAdapter(cmd);
            DataSet dts = new DataSet();
            dta.Fill(dts);


            this.GVVisualizadores.DataSource = dts;
            this.GVVisualizadores.DataMember = dts.Tables[0].ToString();
            this.GVVisualizadores.DataBind();

        }
    }
}