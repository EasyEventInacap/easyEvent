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
    public partial class Plantilla1 : System.Web.UI.Page
    {
        SqlConnection cnx;
        SqlCommand cmd;
        SqlDataAdapter dat;
        SqlDataReader dtr;
        DataSet dts;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Buscar();
        }
        public void Buscar()
        {
            

            txtNombreEvento.Text = Session["titulo"].ToString();
            txtDescripcion.Text = Session["descripcion"].ToString();
            string url = Session["link"].ToString();
            String tipoVideo = Session["tipoLink"].ToString();
            if (tipoVideo == "1") {
                String V_youtube_1 = "<iframe width = '100%' height = '100%' allowfullscreen src = 'https://www.youtube.com/embed/" + url + "'></ iframe>";
                video.Text = V_youtube_1;
            }
            if(tipoVideo == "2")
            {

                String V_vimeo_2 = "<iframe src='https://player.vimeo.com/video/" + url + "' width='100%' height='100%' frameborder='0' allow='autoplay; fullscreen; picture-in-picture' allowfullscreen>";
                video.Text = V_vimeo_2;
            }

            img.ImageUrl = Session["logo"].ToString();
            //fondo.ImageUrl = Session["fondo"].ToString();

            
            


            //ffondo.Text = "<img src='"+ Session["fondo"] + "' border='10px' height='250px' width='400px'/>";

           
        }
    }
}