using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace easyEvent
{
    public partial class Plantilla2 : System.Web.UI.Page
    {
        SqlConnection cnx;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        string cadena = "Data Source=dbEvent.mssql.somee.com;Initial Catalog=dbEvent;user id=easyEvent_Inacap_SQLLogin_1;pwd=2u8efjbzlf";
        protected void Page_Load(object sender, EventArgs e)
        {
            Buscar();
        }
        public void Buscar()
        {
            txtNombreEvento.Text = Session["titulo"].ToString();
            txtDescripcion.Text = Session["descripcion"].ToString();
            string url = Session["link"].ToString();
            imgLogo.ImageUrl = Session["logo"].ToString();
            //img.ImageUrl = Session["imagen"].ToString();


            video.Text = "<iframe width='100%' height='100%' allowfullscreen src ='" + url + "'></ iframe >";


        }
    }
}