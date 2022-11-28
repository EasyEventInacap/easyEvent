using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Text;

namespace easyEvent
{
    public partial class ListaVisualizadores : System.Web.UI.Page
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
                Visualizar();
            }
        }

        protected void ExportarExel(object sender, EventArgs e)
        {
            ExportToExcel("Evento.xls", GVVisualizadores);
        }
        private void ExportToExcel(string nameReport, GridView wControl)
        {
            HttpResponse response = Response;
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            Page pageToRender = new Page();
            HtmlForm form = new HtmlForm();
            form.Controls.Add(wControl);
            pageToRender.Controls.Add(form);
            response.Clear();
            response.Buffer = true;
            response.ContentType = "application/vnd.ms-excel";
            response.AddHeader("Content-Disposition", "attachment;filename=" + nameReport);
            response.Charset = "UTF-8";
            response.ContentEncoding = Encoding.Default;
            pageToRender.RenderControl(htw);
            response.Write(sw.ToString());
            response.End();
        }

        protected void BTNVolver(object sender, EventArgs e)
        {
            Response.Redirect("MenEvent.aspx");
        }

        public void Visualizar()
        {
            SqlConnection cnx = new SqlConnection(Session["Cadena"].ToString());
            cnx.Open();
            SqlCommand cmd = new SqlCommand("ListaVisualizadores", cnx);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id_Evento", Session["id_evento"].ToString());
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